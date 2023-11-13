import 'package:flutter/material.dart';
import 'package:flutter_oct/theme.dart'; // Importa MyTheme desde theme.dart
import 'package:flutter_oct/main.dart'; // Importa MyTheme desde theme.dart

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Espera completada, navega a la pantalla principal (Home)
          return const HomeApp();
        } else {
          // Aún esperando, muestra la pantalla de carga con la imagen centrada
          return Scaffold(
            backgroundColor: MyTheme.lightTheme().colorScheme.primary,
            body: Center(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/machLogo.png', // Ruta de tu imagen
                  width: 300, // Tamaño de la imagen
                  height: 100,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}