import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Mi Deporte Favorito',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Aplicación desarrollada en Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 25),

              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        title: Text('Estudiante'),
                        subtitle: Text(
                          'Carlos Alberto Zarasti Montecé',
                        ),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.school,
                          color: Colors.green,
                        ),
                        title: Text('Universidad'),
                        subtitle: Text('ECOTEC'),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.menu_book,
                          color: Colors.green,
                        ),
                        title: Text('Materia'),
                        subtitle: Text('Programación IV'),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.assignment,
                          color: Colors.green,
                        ),
                        title: Text('Actividad'),
                        subtitle: Text(
                          'Actividad Integradora 2',
                        ),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.sports_soccer,
                          color: Colors.green,
                        ),
                        title: Text('Tema'),
                        subtitle: Text('Fútbol Sala'),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Información'),
                        content: const Text(
                          'Aplicación creada como parte de la Actividad Integradora 2 de Programación IV.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Aceptar'),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(Icons.info),
                label: const Text('Más información'),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}