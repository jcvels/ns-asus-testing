# Solución de testo y configuración

## Configuración de la solución
Se datalla a continuación como modificar cada uno de los archivos de configuraciín en función de las carracteristicas del producto en producción

### BATTERY / test_config.xml
- MIN ---> Establece el valor maximo de carga que puede tener la bateria. Si el valor es superado, se solicita descargar la batería.
- START ---> Nivel de carga al momento de inicar el test. NO MODIFICAR.
- END ---> Nivel de carga al momento de finalizar el test. NO MODIFICAR.

### BIOS / TOOLS / test_config.xml
- partno ---> Establece el numero de parte que se configurará en el equipo.
- model ---> Establece el modelo con el que se configurará el equipo.
- model2 ---> Establece el modelo de chasis o generico con el que se configurará el equipo.

### IMAGE / config.xml
- SKU ---> Establece el valor que se buscará en image-deployer

### OA3 / TOOLS / oa3.cfg
- Parameter (value) ---> Establece el LicensablePartNumber de la licencia de Windows.

### PARTS / test_config.xml
- CPU ---> Establece el nombre del CPU.
- RAM ---> Establece el valor de memoria RAM total en MB
- HDD ---> Establece el tamaño del volumen donde se está ejecutando Windows en GB.