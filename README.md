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

### Creación de Tabla Stage

![Creacion tabla stage](https://images4.imagebam.com/a6/a5/91/MES0958_o.JPG)

### Consulta a la Tabla Stage

![Consulta 1](https://images4.imagebam.com/fe/58/63/MES095A_o.JPG)

### Creación de Dimensiones

![Crear Dimensión](https://images4.imagebam.com/c4/ca/34/MES095B_o.JPG)

### Crear Tabla de Hecho 

![Crear Tabla de Hecho](https://images4.imagebam.com/0b/d9/ff/MES095D_o.JPG)

### Consulta Productos mas vendidos 

![Consulta 2](https://images4.imagebam.com/b6/2a/9c/MES095F_o.JPG)

### Consulta Método de Pago con mas ventas

![Consulta 3](https://images4.imagebam.com/d0/f6/41/MES095K_o.JPG)