# Calculadora de sumas y restas con Prolog

Proyecto Java Swing + tuProlog basado en la estructura del laboratorio.

## Requisitos
- IntelliJ IDEA
- JDK 21
- Maven (IntelliJ puede importar el `pom.xml` automáticamente)

## Ejecutar
1. Abrí la carpeta `Calculadora` en IntelliJ como proyecto Maven.
2. Esperá a que Maven descargue la dependencia tuProlog.
3. Ejecutá `src/main/java/org/example/Main.java`.
4. Ingresá una operación entera, como `8+5`, y pulsá **Sumar (+)**; para `20-7`, pulsá **Restar (-)**.

## Reglas Prolog
El archivo `src/main/resources/calculo.pl` define `sumar/2` y `restar/2`. Cada regla verifica que los operandos sean enteros con `integer/1` y calcula el resultado con `is`.
