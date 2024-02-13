# Prueba_synapse_bakery_dw

Prueba de Pool Synapse bajo demanda para construir un Almacen de Datos
utilizando tablas externas para cargar datos generados por https://www.mockaroo.com/
de una panaderia ficticia

### Instrucciones 

Se debe usar la llave Shared Access Signature del Contenedor Azure Data Lake en donde estan cargados los datos
Y ejecutar estos comando en el servidor bajo demanda

CREATE MASTER KEY ENCRYPTION BY PASSWORD ='TU_PASS';

CREATE DATABASE SCOPED CREDENTIAL [NOMBRE DE CREDENCIAL]
WITH IDENTITY='SHARED ACCESS SIGNATURE',  
SECRET = 'TU_LLAVE_SAS'
