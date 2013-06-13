metapaquetes-utn
================

Generador de metapaquetes para el repositorio de [GNUtn](http://gnutn.org.ar/)


Uso
---

* Editar `datos_metas.php` con los datos correspondientes
* Ejecutar `crear_meta.php`:
```bash
$ php crear_meta.php
```
* Ejecutar `sistemas/metapaquetear.sh`:
```bash
$ cd sistemas/
$ ./metapaquetear.sh
```

En ese directorio se crearán los `.deb` generados.


Bugs
----
* Falta definir la variable `$mantenedor` en `crear_meta.php`
* Apesta todo el código
* `crear_meta.php` es un ejemplo, debería estar separado en otro repositorio el versionado de la información de materias y dependencias
