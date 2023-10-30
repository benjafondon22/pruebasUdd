import 'package:flutter/material.dart';
import 'componentes.dart'; // Importa el archivo componentes.dart que contiene CustomCard
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(//Acá comienza el Appbar
          backgroundColor: const Color(0xFF6200ed), //color de fondo, a mano, luego se puede integrar a flex_color
          leading: const Icon(Icons.account_circle), //ubicación del ícono de navegación
          elevation: 0,
          title: const Text('Hola Nombre Apellido'), //título de la app
          actions: [//iconos búsqueda y more_vert
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {
                // Acción para el ícono de búsqueda
              },
            ),
            IconButton(
              icon: const Icon(Icons.help_outline),
              onPressed: () {
                // Acción para el ícono "more_vert"
              },
            ),
          ],
        ),// Acá termina el AppBar





        body: SingleChildScrollView( //Permite eventualemnte desplazarse a un punto x en el scroll.

          child: Column( //será una columna vertical, navegamos verticalmente

            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Card1(),
              ),


              const Divider(//para separar del siguiente container, es horizontal
                height: 64.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

        
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF6200ed), // Color en formato hexadecimal
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 96.0,
                  width: double.infinity,
                ),
              ),


              const Divider(//para separar del siguiente container, es horizontal
                height: 32.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Container(
                  color: const Color(0xFF6200ed), // Color en formato hexadecimal
                  height: 32.0,
                  width: double.infinity,
                  child: const Text(
                    'Mis accesos directos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                     
                    ),
                  ),
                ),
              ),


              const Divider(//para separar del siguiente container, es horizontal
                height: 16.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

             
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Row(
                  children: [
                    Expanded(
                    flex: 1, //segunda división de la superficie, ROW
                    child: Card3(),
                  ),

                  const SizedBox(width: 16.0), //separador vertical

                  Expanded(
                    flex: 1, //segunda división de la superficie, ROW
                    child: Card3(),
                  ),

                  const SizedBox(width: 16.0), //separador vertical


                  Expanded(
                    flex: 1, //segunda división de la superficie, ROW
                    child: Card3(),
                  ),
                
                ],
              ),
              ),
              


              const Divider( //Nuevo separador horizontal
                height: 32.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

        
      

              Padding(
                            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                            child: Container(
                              color: const Color(0xFF6200ed), // Color en formato hexadecimal
                              height: 32.0,
                              width: double.infinity,
                              child: Text(
                    'Conoce MACH',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                     
                    ),
                  ),
                            ),
              ),

              const Divider( //Nuevo separador horizontal
                height: 16.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
      

              Padding(
                            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                            child: Container(
                              decoration: BoxDecoration(

                      color: const Color(0xFF6200ed), // Color en formato hexadecimal
                      borderRadius: BorderRadius.circular(8),
                    ),
                              height: 96.0,
                              width: double.infinity,
                            ),
              ),
              

            


              
                ],
           
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 221, 221, 221), //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), // Icono blanco
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add), // Icono blanco
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search), // Icono blanco
              label: 'Search',
            ),
          ],
          selectedItemColor: const Color(0xFF6200ed), // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(255, 103, 102, 102), // Color de íconos no seleccionados
        ),
      ),
    );
  }
}

