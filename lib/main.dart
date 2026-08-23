import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MiDeporteApp());
}

class MiDeporteApp extends StatelessWidget {
  const MiDeporteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Deporte Favorito',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0B6E4F),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  bool mostrarInformacion = false;

  void cambiarInformacion() {
    setState(() {
      mostrarInformacion = !mostrarInformacion;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          mostrarInformacion
              ? '¡Información adicional mostrada!'
              : 'Información adicional oculta.',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const verde = Color(0xFF0B6E4F);
    const dorado = Color(0xFFD4A017);

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F5),
      appBar: AppBar(
        backgroundColor: verde,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Mi Deporte Favorito',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: verde,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.sports_soccer,
                    size: 90,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Fútbol Sala',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Velocidad, técnica y trabajo en equipo',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '¿Por qué me gusta?',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: verde,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'El fútbol sala es un deporte dinámico que combina '
                      'habilidad con el balón, rapidez de decisión y '
                      'coordinación entre todos los integrantes del equipo.',
                      style: GoogleFonts.poppins(fontSize: 15),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DatoDeporte(
                          icono: Icons.groups,
                          titulo: '5',
                          subtitulo: 'Jugadores',
                        ),
                        DatoDeporte(
                          icono: Icons.timer,
                          titulo: '40 min',
                          subtitulo: 'Partido',
                        ),
                        DatoDeporte(
                          icono: Icons.flash_on,
                          titulo: 'Rápido',
                          subtitulo: 'Ritmo',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            if (mostrarInformacion)
              Card(
                color: const Color(0xFFFFF8E1),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.lightbulb,
                        color: dorado,
                        size: 30,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Dato adicional: en el fútbol sala cada jugador '
                          'participa constantemente en ataque y defensa, '
                          'por eso la comunicación y el trabajo en equipo '
                          'son fundamentales.',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: cambiarInformacion,
                icon: Icon(
                  mostrarInformacion
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                label: Text(
                  mostrarInformacion
                      ? 'Ocultar información'
                      : 'Mostrar información',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: dorado,
                  foregroundColor: Colors.black87,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Actividad Integradora 1 - Programación IV',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
              ),
            ),
            Text(
              'Carlos Alberto Zarasti Montecé',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DatoDeporte extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String subtitulo;

  const DatoDeporte({
    super.key,
    required this.icono,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 4),
        Icon(icono, color: const Color(0xFF0B6E4F), size: 28),
        const SizedBox(height: 6),
        Text(
          titulo,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          subtitulo,
          style: GoogleFonts.poppins(
            fontSize: 11,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}