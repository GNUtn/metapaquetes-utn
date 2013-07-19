#!/bin/bash
target=$(mktemp -d)
base=`pwd`
mkdir -p $base/debs/
ln -s $base/licencias/ $target
cd $target
for control in $base/controlfiles/*
do
	echo $control
	equivs-build $control
	mv *\.deb $base/debs
done
rm $target/licencias
rmdir $target
