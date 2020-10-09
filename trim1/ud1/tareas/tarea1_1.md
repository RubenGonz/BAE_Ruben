# Primera tarea de base de datos

## Preguntas

**¿Qué es un archivo o fichero?**

Un archivo o fichero es el lugar donde se almacena una informacion que esta compuesta por bytes, asi que se podría de cier que un fichero o archivo es una base de datos donde se almacenan bytes.

**Tipos de ficheros.**

Hay muchos tipos de archivos y una forma sencilla de reconocerlos es por su extension, por ejemplo el archivo terminado en ".txt" es un archivo que almacena texto. Otro tipo es ".gif" o ".mp4" que son de imagen y audio.

**Define brevemente los conceptos de registro y campo.**

Un campo es la unidad minima de información a la que se puede acceder por un usuario, por ejemplo en una base de datos un campo puede ser un booleano, es decir que se limita a decirnos si algo es falso o verdadero. En cambio un registro es el conjunto de 2 o mas campos.

**¿Qué es una base de datos?**

Una base de datos es aquel lugar donde se guarda informacion con la intencion de poder hacer consultas en un futuro.

**Diferencias entre un sistema convencional de archivos y un Sistema Gestor de Base de Datos.**

Un sistema de archivos convencional tiene la principal desventaja de que su modificacion es fisica la mayoria de las veces y se limita a almacenar la informacion introducida, en cambio el sistema gestor de base de datos puede modificar cualquier información introducida de forma mas sencilla, ademas el sistema gestor de base de datos cuenta con actualizaciones y se preocupa de la rebundancia de los archivos mientras que el sistema convencional no lo hace.

**Componentes de un Sistema Gestor de Base de Datos.**

El primero es el diccionario de datos, que es el lugar donde se guardan los metadatos, los permisos y los datos de los archivos. Despues tenemos el lenguaje de definicion de datos que es el lenguaje que utiliza el sistema y con el que podemos estructurar la información. Y por ultimo tenemos el lenguaje de manipulacion de datos que es aquel con el que podemos introducir nueva informacion ademas de ser el lenguaje con el que se comprime y extaer informacion.

**Tipos de usuarios de las bases de datos, funciones y características de cada uno de ellos.**

Primero tenemos el programador de aplicaciones que son los que manejan el lenguaje de manipulación de datos y se encargan de escribir programas que usen bases de datos. El usuario final que usa un lenguaje seleccionado por el programador o en su lugar usa un lenguage especifico de consulta y que pretende acceder a la información de la base de datos. Y el administrador de la base de datos que es el que se encarga del uso correcto y el control del sistema.

**Organización de una base de datos.**

Las bases de datos estan organizadas primero en campos, que es la unidad minima de la base, cuando reunimos muchos campos de un tema en especifico conseguimos tener un registro, que es un conjunto de campos y cuando tenemos un conjunto de registros de un tema finalmente tenemos la unidad más normal para el usuario que es el archivo.

**Modelos de bases de datos.**

Hay muchos modelos de bases de datos, como por ejmeplo estos 4:
- Jerarquico: Un modelo que hace semejanza a un tronco del que se derivan muchas ramas, en este caso, de informacion.
- En red: Modelo en el que los archivos estan relacionaos entre si y se encuentran enlazados.
- Orientado a objetos: En este modelo se busca representar la información con objetos para su facilitar su organizacion.
- En estrella: Hay un cuerpo principal de información del que deriva la otra información.

**Tipos de archivos según su función en el tiempo**

Hay 3 tipos de archivos con respecto a su funcion en el tiempo:
- Archivos activos: Son aquellos que se consultan con normalidad y no pierde vigencia. La información se suele haber emitido antes de los 5 años.
- Archivos semiactivos: Son aquellos archivos que se conservan para comprobar las operaciones realizadas en los archivos activos.
- Archivos inactivos: Son aquellos archivos que se consultan con muy poca frecuencia y que tienen una utilidad bastante menor a los otros archivos y por ello el nombre de archivos inactivos.
