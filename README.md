# Mi Deporte Favorito - Fútbol Sala

## Actividad Integradora 2

**Materia:** Programación IV  
**Estudiante:** Carlos Alberto Zarasti Montecé  
**Universidad:** ECOTEC

## Descripción de la aplicación

Mi Deporte Favorito es una aplicación móvil desarrollada en Flutter sobre la temática del fútbol sala.

Este proyecto corresponde a la continuación y mejora de la aplicación desarrollada previamente en la Actividad Integradora 1.

## Nuevas funcionalidades implementadas

Para la Actividad Integradora 2 se incorporaron nuevas pantallas, navegación mediante Navigator, selección de equipos, sistema básico de favoritos, mensajes mediante SnackBar, ventanas AlertDialog y apertura de enlaces externos.

## Pantallas desarrolladas

La aplicación contiene cuatro pantallas principales:

1. **Inicio:** presenta la temática de la aplicación y permite acceder a las demás secciones.
2. **Equipos:** muestra diferentes equipos mediante una cuadrícula y permite seleccionarlos.
3. **Mis favoritos:** permite agregar o quitar Fútbol Sala como favorito.
4. **Acerca de:** presenta información del estudiante, universidad, materia y actividad, además de permitir abrir un enlace externo.

## Widgets utilizados

Durante el desarrollo se utilizaron diferentes widgets de Flutter, entre ellos:

- Scaffold
- AppBar
- GridView
- ListTile
- Card
- CircleAvatar
- Divider
- Icon
- ElevatedButton
- IconButton
- FloatingActionButton
- Padding
- SizedBox

## Interacciones implementadas

La aplicación incorpora diferentes interacciones:

- Navegación entre pantallas mediante Navigator.
- Selección de equipos.
- Visualización de mensajes mediante SnackBar.
- Apertura de ventanas mediante AlertDialog.
- Agregar y quitar un elemento de favoritos.
- Apertura de un sitio web externo.

## Uso de setState()

En la pantalla Mis favoritos se implementó `setState()` para modificar dinámicamente el estado del elemento favorito.

Al presionar el corazón, la variable que controla el estado cambia y la interfaz se actualiza mostrando si Fútbol Sala se encuentra agregado o eliminado de favoritos.

## Paquete externo

Se utilizó el paquete externo `url_launcher`.

Este paquete permite abrir enlaces externos desde una aplicación Flutter. En la pantalla Acerca de se incorporó el botón **Visitar Flutter**, que abre el sitio oficial de Flutter en el navegador del dispositivo.

## Personalización

La aplicación fue personalizada de acuerdo con la temática seleccionada mediante:

- Nombre: **Mi Deporte Favorito**.
- Temática: **Fútbol Sala**.
- Colores personalizados, principalmente verde.
- Iconos relacionados con fútbol y deportes.
- Elementos visuales representativos de la temática.

## Evidencias

Las capturas de pantalla del funcionamiento de la aplicación se encuentran almacenadas en la carpeta `capturas`.

Las evidencias incluyen:

- Pantalla principal.
- Pantalla de equipos.
- Selección de equipos.
- Pantalla de favoritos.
- Interacción con favoritos.
- AlertDialog.
- Pantalla Acerca de.
- Funcionamiento del paquete `url_launcher` abriendo Flutter en el navegador.

## Ejecución del proyecto

Para ejecutar el proyecto se deben instalar las dependencias:

flutter pub get

Posteriormente se debe iniciar un emulador Android y ejecutar:

flutter run

## Conclusión

El desarrollo de esta actividad permitió ampliar la aplicación creada previamente e implementar navegación entre múltiples pantallas, nuevos widgets, manejo de estado mediante setState(), interacciones con el usuario y utilización de un paquete externo de Flutter.