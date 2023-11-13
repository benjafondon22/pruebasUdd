import 'package:flutter/material.dart';
import 'package:flutter_oct/theme.dart';


//AHORA LA PANTALLA DE DETALLES ES INDEPENDIENTE
//SE CREA UNA CLASE DETAILSCREENDATA, CON DOS ATRIBUTOS O PARÁMETROS
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

//SE LE AGREGARON ATRIBUTOS PARA QUE SEA DINÁMICA

Widget createCustomCard(
  BuildContext context,
  String groupName,
  String imagePath,
  String title,
  String description,
) {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 180,
          color: Colors.white,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BottomSheet'),
              ],
            ),
          ),
        );
      },
    );
  }

  return Card(
    elevation: 1,
    margin: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Container(
      height: 460,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 72,
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(2, 4, 8, 4),
              leading: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black, // Corrección aquí
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      showBottomSheet(context);
                    },
                    padding: const EdgeInsets.only(top: 12),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(0),
                ),
              ),
            ),
          ),
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

Widget novedadesItem() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.onPrimaryContainer,
    ),
    title: const Text('Actualizacion'),
    subtitle: const Text('Hoy, 10:15 AM'),
    trailing: const Icon(Icons.more_vert),
  );
}

Widget llamadasItem(BuildContext context, String title) {
  const time = '15 de octubre, 12:30';
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
      leading: const CircleAvatar(
        // backgroundColor: MyTheme.lightTheme().colorScheme.onPrimaryContainer,
        backgroundImage: AssetImage(
            'assets/1.jpg'), // Carga la imagen '1.jpg' en el CircleAvatar
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
            child: const Icon(Icons.arrow_outward, size: 16),
          ),
          const SizedBox(width: 4),
          const Text(time, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: const Icon(Icons.call),
    ),
  );
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
              padding: EdgeInsets.only( top: 16.0, right:156),
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
                      const Color(0xFF6200ed), // Color en formato hexadecimal
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
              child: Text(
                '1.000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      const Color(0xFF6200ed), // Color en formato hexadecimal
                  fontSize: 32,
                ),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.currency_exchange,
                    color:  Color(0xFF6200ed),
                    size: 50,
                  ),
                ),
                const Padding(
                  // Ajusta el espacio entre el ícono y el texto
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Compra o Paga por MACH',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                // const SizedBox(width: 4),
                // const Text(time, style: TextStyle(fontSize: 12)),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget Item(BuildContext context, String title) {
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

Widget Item2(BuildContext context, String title) {
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
      leading: Image(
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

Widget Item3(BuildContext context, String title) {
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
      leading: Image(
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

Widget Item4(BuildContext context, String title) {
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
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
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
