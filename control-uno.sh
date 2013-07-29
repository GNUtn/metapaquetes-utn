#!/bin/bash
unset paquete nombre instala dependencias sugerencias
version=$(date -u +%Y.%m.%d.%H.%M)
. $1
mantenedor="Matias Garcia Isaia <mgarciaisaia@gmail.com>"

echo "Section: utn
Priority: optional
Standards-Version: 3.6.2
Package: ${paquete}
Version: ${version}
Maintainer: ${mantenedor}
Depends: ${dependencias}" > $2
if [ -v sugerencias ]
then
	echo "Suggests: ${sugerencias}" >> $2
fi
echo "Architecture: all
Copyright: licencias/gplv3.txt
Description: Metapaquete de ${nombre}
 Metapaquete instalador del software necesario para cursar ${instala} de la Universidad Tecnologica Nacional.
 .
 ${paquete} es proveido por UTNcillo para facilitar la instalacion del software necesario para cursar en la UTN. Este paquete esta mantenido por ${mantenedor}" >> $2

