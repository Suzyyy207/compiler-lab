#!/bin/bash

# 获取脚本所在目录的绝对路径
func_testcase_dir=$(dirname "$0")/tests/public
# func_testcase_dir=$(dirname "$0")/tests/private

test_single() {
    # 获取测试文件的相对路径
    test_file=$(readlink -f "$func_testcase_dir/$1.tea")
    test_name=${test_file%.tea}

    echo -n $test_name
    echo ": "

    # 编译器执行命令
    ./compiler "$func_testcase_dir/$test_name.tea"
    if [ $? != 0 ]; then
        echo "fail"; exit -1
    fi

    # llvm-link 执行命令
    llvm-link "$func_testcase_dir/$test_name.ll" sylib.ll -S -o ./output/$test_name.ll
    if [ $? != 0 ]; then
        echo "fail to link"; exit -1
    fi

    if [ -f "$func_testcase_dir/$test_name.in" ]; then
        # lli 执行命令
        lli ./output/$test_name.ll < "$func_testcase_dir/$test_name.in" > output/$test_name.out
    else
        lli ./output/$test_name.ll > ./output/$test_name.out
    fi

    # 输出 lli 命令的返回值到输出文件
    echo -e $? >> ./output/$test_name.out

    # 比较输出文件
    diff -Bb ./output/$test_name.out "$func_testcase_dir/$test_name.out" > /dev/null 2>/dev/null
    if [ $? == 0 ]; then
        echo "pass"; 
    else
        echo "fail"
        echo "Expect:"
        cat "$func_testcase_dir/$test_name.out"
        echo "Got:"
        cat ./output/$test_name.out
        exit -1
    fi
}

main() {
    test_single "$1"
}

main "$@"
