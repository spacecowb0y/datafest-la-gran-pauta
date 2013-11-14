Datafest: La gran propuesta
===========================

Datos publicados por la Jefatura de Gabinete de Ministros sobre la inversión en publicidad oficial por proveedor y tipo de medio. Información desde Diciembre de 2008, estructurada por razón social, tipo de medio y total general.

Requerimientos
==============

- Ruby 1.9.3
- MySQL


Instrucciones
=============

Un vez que bajas el repo, tenes que crear una base de datos con el nombre `datafest_medios` e importar el dump que se encuentra en `public/dataset.sql`.

Luego desde la terminal, dentro del directorio donde esta la aplicación hay que ejecutar esta serie de comandos:

~~~ bash
$ bundle install
$ ruby app.rb
~~~

Sí todo salio bien, la aplicación deberia estar andando en en la siguiente ruta: http://0.0.0.0:4567

![preview](http://cl.ly/image/2e0l2C0A431Y/datafest_preview.png)

La aplicación usa *activerecord* como ORM que es compatible con: *postgresql*, *mysql* y *sqlite*. En caso que quieras cambiar el motor de la base datos tenes que configurar el archivo `config/database.yml`.


Equipo
======

- Adrian Pino
- Alejandro Di Meglio
- Diego Peralta
- Diego Tripodi
- Elena Brizuela
- Fernando Ruiz
- Gerardo Gera
- Jorge Lerche

