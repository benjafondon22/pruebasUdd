import 'package:flutter/material.dart';


class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                'Mi cuenta MACH',
                style: TextStyle(
                  
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),

          Container(
            height: 32,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text(
                'Cuenta Vista BCI - 777000777444',
                style: TextStyle(
                 
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
          ),

          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                'Saldo Disponible',
                style: TextStyle(
                  color: const Color(0xFF6200ed), // Color en formato hexadecimal
                  fontSize: 20,
                ),
              ),
            ),
          ),

          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text(
                '1000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF6200ed), // Color en formato hexadecimal
                  fontSize: 32,
                ),
              ),
            ),
          ),
          
          Container(
            height: 48,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text('Ver mis movimientos'),
            ),
          ),
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Redondea las esquinas
      ),
      child: Container(
        height: 300, // Ajustar la altura
        color: const Color.fromARGB(255, 65, 62, 62),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                          color: const Color.fromARGB(255,195,195,195),

                  padding: const EdgeInsets.all(10),
                ),
              ),
            ),
            // Iconos en la parte inferior de la tarjeta
            Container(
              color: Colors.white,
              height: 100,
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                alignment: Alignment.topLeft,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Icon(Icons.search, color: const Color(0xFF6200ed)),
            ),
          ),
         
          Container(
            height: 64,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text('Texto y mas texto posible'),
            ),
          ),
        ],
      ),
    );
  }
}

