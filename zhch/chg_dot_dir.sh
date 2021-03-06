if [ $# != 1 ]
then
	echo "Usage: $0 directory"
	exit 1
fi

cur_dir=$PWD
for s_dir in `find $1 -path .metadata -prune -o -type d -name "*.*.*.*" -print`
do
	cd $cur_dir
	echo ""
	dir=${s_dir##*\/}
	p_dir=${s_dir%\/*}
	echo "[$p_dir]-->[$dir]"
	cd $p_dir

	fulldir=${dir//\./\/}
	cmd1="mkdir -p $fulldir"
	echo "[$dir]-->$cmd1"
	eval $cmd1

	cmd2="cp $dir/* $fulldir"
	echo "$cmd2"
	eval $cmd2

	cmd3="rm -rf $dir"
	echo "$cmd3"
	eval $cmd3
done

#! /usr/bin/bash
# apps="${1}"
# 按“T”分隔
# arr=(${apps//T/ })
# for app in ${arr[@]}
# do
	# apps2="${app}"
	# 按“,”分隔
	# arr2=(${apps2//,/ })
	# for app2 in ${arr2[@]}
	# do
		# echo "${app2}"
	# done
# done

