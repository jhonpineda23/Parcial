### PART II

#### 1. Create tables:

CATEGORIES(id, name, season)
PRODUCTS(id, name, reference, price, category_id)
ANSWERS(id, number_of_question varchar2(255), answer varchar2(255))

Primary keys: int
Names: varchar2(255)
Price: decimal(10,3)

Add these constraints:
* Primary keys
* Season MUST only accept 'winter', 'summer', 'spring', 'autumn'
* Price MUST be greater than 0
* Foreign key

#### 2. Import data
Import data from files partII/categories.csv and partII/products.csv

#### 3. Questions
Based on the data answer the following questions and insert the answers in the "ANSWERS" table: (1.0)

  1. How many references of winter shoes are in the inventory? (0.2)
  2. How much does it cost the less expensive product of fitness gear category of summer season? (0.2)
  3. What is the reference of the product which has the maximum price of golf category? (0.2)
  4. What is the name of the product which reference is 523C9788-FFA5-715C-1F2B-7AA8BC33C107 (0.2)
  5. What is the name of the category which product with name "ligula consectetuer rhoncus." belongs to? (0.2)

For example:

|id | number      | value                                  |
| --- | --- | --- |
|1  |QUESTION 1 | 5656                                 |
|2  |QUESTION 2 | 5666.36                              |
|3  |QUESTION 3 | 0E290CDE-FD74-1BA6-D84D-7F1E9AD5BF05 |


#### 4. Export:
Export a file named script.sql using SQLDeveloper and add the file to this folder (Follow the images in the path part_II/export_instructions). The resulting file should be added inside the folder Part II (1.0)
  * Primary keys and constraints: (0.2)
  * Right types of columns and names: (0.2)
  * Creation of table answers with values filled: (0.6)

### PART III

1. Create a tablespace called "RENTING_COLOMBIA" with one datafile of 150Mb, the name of the datafile should be: renting.dbf (0.1)
2. Create a profile named "comercial_medellin" with the following specifications: (0.1)
  a) Idle time of 25 minutes
  b) Failed login attempts 4
  c) Onle one session per user
3. Create an user named "amartinez" with only 50Mb of space on tablespace, the profile should be "comercial_medellin" (0.1)
4. Add the roles "CONNECT" and "DBA" to user "amartinez" (0.1)
5. Log in as "amartinez" and create all tables associated with the normalization process, create sequences, add all the constraints you consider it
  a) Attach a screenshot of the diagram punto5.png and export a file named renting.sql using SQLDeveloper (0.1)
  b) Normalitazion: 1.5

#### Normalizar:

Una Empresa que se dedica a la Renta o Alquiler de Vehículos requiere un sistema que permita llevar un control de dichos procesos.
En el momento en que un cliente solicita un vehiculo en alquiler, se llena Solicitud de Renta con los siguientes Datos:  Nro de solicitud, Fecha, Días de Alquiler, Datos Básicos del Cliente, Datos Básicos de 2 Codeudores, placa, marca, chasis, cilindraje y modelo del Vehiculo que se va a rentar, Valor Total, Porcentaje de Iva, Porcentaje de Multa.
Cada vehiculo tiene un valor por hora de alquiler.
En el momento del Pago se debe elaborar un comprobante de Pago con los siguientes datos (Nropago, fecha, hora, valor pago, cliente y la solicitud de renta que se está pagando).
Tener en cuenta que el cliente puede cancelar la totalidad del servicio en diferentes Medios de pago, (Tarjeta Debito, Bonos Sodexo, Tarjeta Crédito, efectivo, consignación, transferencia bancaria entre otras), el cliente puede elegir si paga por un solo medio de pago o si los utiliza todos o algunos de ellos.
