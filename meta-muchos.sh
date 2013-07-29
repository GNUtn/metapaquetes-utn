#!/bin/bash
target=$(mktemp -d)
base=`pwd`
ln -s $base/licencias/ $target
cd $target
for control in $*
do
	echo $control
	equivs-build $base/$control
	mv *\.deb $base/debs
done
rm $target/licencias
rmdir $target
