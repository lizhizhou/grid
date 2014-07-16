#!/bin/sh
tmppath="tmp$$"
mkdir $tmppath
for shname in `cd package; ls *.v`
do 
	name=`echo "$shname" | awk -F. '{print $1}'`      
	cp package/$shname matrix.v     
	make
	cp output/grid.rbf $tmppath/$name.rbf
done
cd $tmppath; tar -czf ../package/grid.tar.gz *.rbf
rm -rf $tmppath
