# Mi Deporte Favorito

## Descripción

Mi Deporte Favorito es una aplicación móvil desarrollada con Flutter sobre la temática del fútbol sala. La aplicación permite navegar entre diferentes pantallas, visualizar equipos y administrar una lista de equipos favoritos mediante Provider.

Este proyecto corresponde a la Actividad Integradora 3 de Programación IV.

## Objetivo

Desarrollar una aplicación Flutter organizada en diferentes archivos y carpetas, aplicando navegación entre pantallas, widgets reutilizables, un modelo de datos y gestión de estado mediante Provider.

## Funciones principales

- Pantalla principal de la aplicación.
- Navegación entre cuatro pantallas.
- Visualización de equipos mediante GridView.
- Selección y eliminación de equipos favoritos.
- Actualización automática de favoritos entre distintas pantallas.
- Uso de Provider para administrar el estado.
- Uso de widgets personalizados reutilizables.
- Pantalla informativa Acerca de.

## Tecnologías utilizadas

- Flutter
- Dart
- Provider
- Material Design

## Estructura del proyecto

```text
lib/
├── models/
│   └── sport.dart
├── providers/
│   └── sport_provider.dart
├── screens/
│   ├── about_screen.dart
│   ├── favorites_screen.dart
│   ├── home_screen.dart
│   └── teams_screen.dart
├── widgets/
│   ├── favorite_button.dart
│   └── sport_card.dart
└── main.dart