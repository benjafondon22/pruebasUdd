import 'package:flutter/material.dart';
import 'package:flutter_oct/theme.dart';

class DetailScreenData {
  final String itemName;
  final String description;

  DetailScreenData(this.itemName, this.description);
}

Widget buildDetailScreen(BuildContext context, DetailScreenData data) {
  return Scaffold(
    appBar: AppBar(
      title: Text(data.itemName),
    ),
    body: Container(
      padding: const EdgeInsets.fromLTRB(16, 32, 16,
          0), // Agrega un padding para desplazar los textos hacia arriba
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Alinea el texto a la izquierda
        children: [
          Text(
            'Detalles de ${data.itemName}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Descripción: ${data.description}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

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
            height: 45,
            //color: Color.fromARGB(255, 255, 27, 27),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),

            
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mi cuenta MACH',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.black, // Ajusta el color según sea necesario
                    size: 24, // Ajusta el tamaño según sea necesario
                  ),
                ],
              ),
            ),

            

     
          ),
          Container(
            height: 24,
            decoration: const BoxDecoration(
              color: Colors.white,
         
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
    
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                'Saldo Disponible',
                style: TextStyle(
                  color:
                      Color(0xFF6200ed), // Color en formato hexadecimal
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            height: 64,
            decoration: const BoxDecoration(
              color: Colors.white,
     
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8.0),
              
              child: Row(
              children: [
                Icon(Icons.attach_money,color: Color(0xFF6200ed),size: 32.0),
                SizedBox(width: 8.0), // Espaciado entre el icono y el texto
                Text(
                  "1.000",
                  style: TextStyle(fontSize: 32.0, color: Color(0xFF6200ed)),
                  

                ),
              ],
            ),
            ),
          ),

          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 197, 197, 197),
              
            ),
            
          ),

          Container(
            height: 56,
            decoration: const BoxDecoration(
              color: Colors.white,
         
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text('Ver mis movimientos', textAlign: TextAlign.center,
              style: TextStyle(
                            color:  Color(0xFF6200ed),
                            fontSize: 16,
                          ),),
            ),
          ),
        ],
      ),
    );
  }
}

class Card4 extends StatelessWidget {
  const Card4({super.key});

  @override
  Widget build(BuildContext context) {
    //const time = '15 de octubre, 12:30';
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            width: double.infinity,
            height: 100,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.currency_exchange,
                    color: Color(0xFF6200ed),
                    size: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cobrar o Pagar por MACH',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Envía y recibe pagos de forma',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'fácil y rápida',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget cardsMedium(BuildContext context, String text, String nombreIcono ) {
  
IconData icono;

// Asigna un icono diferente basado en el nombre del grupo
  switch (nombreIcono) {
    case 'qr':
      icono = Icons.qr_code_2;
      break;
    case 'creditcard':
      icono = Icons.credit_card;
      break;
    case 'billete':
      icono = Icons.payments;
      break;
      case 'regalo':
      icono = Icons.redeem;
      break;

      case 'cadena':
      icono = Icons.link;
      break;
      
      case 'atm':
      icono = Icons.local_atm;
      break;
      case 'lenguaje':
      icono = Icons.language;
      break;
    default:
      icono = Icons.error; // Icono predeterminado para casos no manejados
  }

// Crea el Icon fuera del Container
  Icon iconWidget = Icon(icono, size: 32.0, color: MyTheme.lightTheme().colorScheme.primary);

    return Container(
    width: 138,
    child: Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 48,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child: Row(
                children: [
                  iconWidget,
                ],
              ),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text(text),
            ),
          ),
        ],
      ),
    ),
  );
  }

Widget item(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => buildDetailScreen(
            context,
            DetailScreenData(title, 'Descripción de $title'),
          ),
        ),
      );
    },
    child: ListTile(
      title: Text(title),
      subtitle: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
            color: Colors.grey,
          ))
        ],
      ),
      //trailing: const Icon(Icons.call),
    ),
  );
}

Widget item2(BuildContext context, String title) {
  const time = '°°°°°°4845';
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => buildDetailScreen(
            context,
            DetailScreenData(title, 'Descripción de $title'),
          ),
        ),
      );
    },
    child: ListTile(
      leading: const Image(
        image: AssetImage('assets/tarjeta1.png'),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
          ),
          const SizedBox(width: 4),
          const Text(time, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
  );
}

Widget item3(BuildContext context, String title) {
  const time = 'Bloqueada';
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => buildDetailScreen(
            context,
            DetailScreenData(title, 'Descripción de $title'),
          ),
        ),
      );
    },
    child: ListTile(
      leading: const Image(
        image: AssetImage('assets/tarjeta2.png'),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
          ),
          const SizedBox(width: 4),
          const Text(time, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
  );
}

Widget item4(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => buildDetailScreen(
            context,
            DetailScreenData(title, 'Descripción de $title'),
          ),
        ),
      );
    },
    child: ListTile(
      title: Text(title),
      subtitle: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Icon(
              Icons.currency_exchange,
              color:  Color(0xFF6200ed),
            ),
          ),
          const Padding(
            // Ajusta el espacio entre el ícono y el texto
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              'Recarga',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
          ),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
  );
}
