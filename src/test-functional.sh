#!/bin/bash

# 获取脚本所在目录的绝对路径
script_dir=$(cd "$(dirname "$0")" && pwd)
func_testcase_dir="$script_dir/tests"

test_single() {
    test_file="$func_testcase_dir/$1.tea"
    # 获取测试文件的相对路径
    test_name="${test_file#$func_testcase_dir/}"
    test_name="${test_name%.tea}"

    echo -n "$test_name"
    echo ": "

    # 编译测试文件
    ./compiler "$func_testcase_dir/$test_name.tea"
    if [ $? != 0 ]; then
        echo "fail to compile"
        exit -1
    fi

    # 链接生成的 LLVM IR 文件
    llvm-link "$func_testcase_dir/$test_name.ll" sylib.ll -S -o "./output/$test_name.ll"
    if [ $? != 0 ]; then
        echo "fail to link"
        exit -1
    fi

    # 运行生成的可执行文件
    if [ -f "$func_testcase_dir/$test_name.in" ]; then
        lli "./output/$test_name.ll" < "$func_testcase_dir/$test_name.in" > "./output/$test_name.out"
    else
        lli "./output/$test_name.ll" > "./output/$test_name.out"
    fi

    # 将返回值写入输出文件
    echo -e "$?" >> "./output/$test_name.out"

    # 检查输出文件是否与预期一致
    diff -Bb "./output/$test_name.out" "$func_testcase_dir/$test_name.out" > /dev/null 2>/dev/null
    if [ $? == 0 ]; then
        echo "pass"
    else
        echo "fail"
        echo "Expect:"
        cat "$func_testcase_dir/$test_name.out"
        echo "Got:"
        cat "./output/$test_name.out"
        exit -1
    fi
}

main() {
    test_single "$1"
}

main "$@"
