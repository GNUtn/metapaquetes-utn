<?php
	include('datos_metas.php');
	
	for($j=1;$j<=$i;$j++){
		$arc = fopen('sistemas/'.$paquete[$j],'w');
		fwrite($arc,"Section: utn\nPriority: optional\nStandards-Version: 3.6.2\n\n");
		fwrite($arc,"Package: ".$paquete[$j]."\nVersion: 2010.03.10.1\n");
		fwrite($arc,"Maintainer: ".$mantenedor[$j]."\nDepends: ".$dependencias[$j]."\n");
		fwrite($arc,"Architecture: all\nCopyright: gplv3.txt\n");
		fwrite($arc,"Description: Metapaquete de ".$nombre[$j]."\n");
		fwrite($arc," Este es un metapaquete para instalar el software necesario para cursar ".$que_instala[$j]." de la Universidad Tecnológica Nacional.\n");
		fwrite($arc," .\n ".$paquete[$j]." es un paquete proveido por UTNcillo para facilitar la instalación del software necesario para cursar en la Universidad. Este paquete está mantenido por Matias Garcia Isaia");
		fclose($arc);
	}

?>
