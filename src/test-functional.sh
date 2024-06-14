#!/bin/bash
# 获取脚本所在目录的绝对路径
script_dir=$(cd "$(dirname "$0")" && pwd)
func_testcase_dir="$script_dir/tests/public"
#func_testcase_dir="$script_dir/tests/private"


test_single() {
	# 获取测试文件的相对路径
    test_file="$func_testcase_dir/$1.tea"
    # 获取测试文件的相对路径
    test_name="${test_file#$func_testcase_dir/}"
    test_name="${test_name%.tea}"
	
	echo -n $test_name
	echo ": "

	./compiler $func_testcase_dir/$test_name.tea
	if [ $? != 0 ]; then
		echo fail compiler; exit -1
	fi


	aarch64-linux-gnu-gcc -c $func_testcase_dir/$test_name.S -o output/$test_name.o
    aarch64-linux-gnu-gcc output/$test_name.o sylib/sylib.o -o output/$test_name
	if [ $? != 0 ]; then
		echo "fail to compile"; exit -1
	fi
	ARCH=$(uname -m)
	if [ -f $func_testcase_dir/$test_name.in ]; then
		qemu-aarch64 ./output/$test_name < $func_testcase_dir/$test_name.in > output/$test_name.out
	else
		qemu-aarch64 ./output/$test_name > output/$test_name.out
	fi
	echo -e $? >> ./output/$test_name.out
	diff -Bb ./output/$test_name.out $func_testcase_dir/$test_name.out > /dev/null 2>/dev/null
	if [ $? == 0 ]; then
        echo pass; 
	else
		echo fail;\
		echo "Expect:";\
		cat $func_testcase_dir/$test_name.out;\
		echo "Got:";\
		cat ./output/$test_name.out;\
		exit -1
	fi
}

main() {
	test_single $1
}

main $@
