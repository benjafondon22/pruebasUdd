import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'items.dart';
import 'theme.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      home: const SplashScreen(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<String> _screenTitles = [
    "Inicio",
    "Trasferir",
    "Tarjetas",
    "Servicios",
    "Inversiones"
  ];
  final List<IconData> _screenIcons = [
    Icons.home,
    Icons.swap_horiz,
    Icons.credit_card,
    Icons.request_quote,
    Icons.savings
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(int index) {
    setState(() {
      _currentPage = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: MyTheme.lightTheme().colorScheme.primary, 
                
                leading: const Padding(
                  padding: EdgeInsets.fromLTRB(16, 4, 8, 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage ('assets/perfil.jpg'),
                    radius: 300,
                  ),
                ),
                
                elevation: 0,
                
                title: const Text('Hola CARLA', style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                          ),), //título de la app
                actions: [
                  IconButton(
                    icon: const Icon(Icons.notifications_none),
                    onPressed: () {
                      // Acción para BUSQUEDA
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.help_outline),
                    onPressed: () {
                      // Acción para AYUDA
                    },
                  ),
                ],
              ),

              //SE ACABA EL TOP BAR

              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    // Stack con Card1 y fondo morado
                    Stack(
                      children: [
                        // Fondo morado
                        Container(
                          color: MyTheme.lightTheme().colorScheme.primary,
                          height: 150,
                          width: double.infinity,
                        ),

                        // CARD 1
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Card1(),
                        ),
                      ],
                    ),

                    

                    //DIVISOR
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 32.0, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),

                    //TITULO DE SECCION
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Container(
                        height: 32.0,
                        width: double.infinity,
                        child: const Text(
                          'Mis accesos directos',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                    //DIVISOR
                    const Divider(
                      height: 16.0, 
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1, //segunda división de la superficie, ROW
                            child: cardsMedium(context, 'Carga o retira dinero', 'billete'),
                          ),

                          const SizedBox(width: 16.0), //separador vertical

                          Expanded(
                            flex: 1, //segunda división de la superficie, ROW
                            child: cardsMedium(context, 'Paga con QR', 'qr'),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1, //segunda división de la superficie, ROW
                            child: cardsMedium(context, 'Invita y gana', 'regalo'),
                          ),

                          const SizedBox(width: 16.0), //separador vertical

                          Expanded(
                            flex: 1, //segunda división de la superficie, ROW
                            child: cardsMedium(context, 'Compra en cuotas', 'creditcard'),
                          ),
                        ],
                      ),
                    ),

                    const Divider(
                      //Nuevo separador horizontal
                      height: 32.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Container(
                        // Color en formato hexadecimal
                        height: 32.0,
                        width: double.infinity,
                        child: const Text(
                          'Conoce MACH',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                    const Divider(
                      //Nuevo separador horizontal
                      height: 16.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Image(
                        image: AssetImage('assets/mach.png'),
                        height: 140,
                      ),
                    ),
                    // PUEDES AGREGAR MÁS TARJETA
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: const Color(
                    0xFF6200ed), //color de fondo, a mano, luego se puede integrar a flex_color

                elevation: 0,
                title: const Text('Transferencias'), //título de la app
                actions: [
                  IconButton(
                    icon: const Icon(Icons.help_outline),
                    onPressed: () {
                      // Acción para el ícono "more_vert"
                    },
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                      child: Container(
                        height: 32.0,
                        width: double.infinity,
                        child: const Text(
                          '¿Que quieres hacer hoy?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 16, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Card4(),
                    ),
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 32.0, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Container(
                        height: 32.0,
                        width: double.infinity,
                        child: const Text(
                          'Otras formas de transferir',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 16, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1, //segunda división de la superficie, ROW
                            child: cardsMedium(context, 'Link de cobro', 'cadena'),
                          ),

                          const SizedBox(width: 16.0), //separador vertical

                          Expanded(
                            flex: 1, //segunda división de la superficie, ROW
                            child: cardsMedium(context, 'QR MACH', 'qr'),
                          ),

                          const SizedBox(width: 16.0), //separador vertical

                          Expanded(
                            flex: 1, //segunda división de la superficie, ROW
                            child: cardsMedium(context, 'A cuentas bancarias', 'atm'),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 16, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Row(
                        children: [
                          //Expanded(
                            //flex: 1, //segunda división de la superficie, ROW
                            //child: cardsMedium(context, 'Al extranjero', 'lenguaje'),
                            cardsMedium(context, 'Al extranjero', 'lenguaje'),
                          //),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: MyTheme.lightTheme().colorScheme.primary,

                elevation: 0,
                title: const Text('Tarjetas'), //título de la app
                actions: [
                  IconButton(
                    icon: const Icon(Icons.help_outline),
                    onPressed: () {
                      // Acción para el ícono "more_vert"
                    },
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    item(context, 'Saldo: S1000'),
                    const Divider(
                      height: 0,
                      color: Color.fromARGB(255, 199, 199, 199), //color
                    ),
                    item(context,
                        'En dolares: USS2.94        Tipo de cambio: S946'),
                    const Divider(
                      height: 0,
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Container(
                        height: 32.0,
                        width: double.infinity,
                        child: const Text(
                          'Tu tarjeta MACH',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 32, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    item2(context, 'Tarjeta virtual'),
                    const Divider(
                      color: Color.fromARGB(255, 199, 199, 199), //color
                    ),
                    item3(context, 'Tarjeta fisica'),
                    const Divider(
                      color: Color.fromARGB(255, 199, 199, 199), //color
                    ),
                    const Divider(
                      height: 0,
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: Container(
                        height: 32.0,
                        width: double.infinity,
                        child: const Text(
                          'Opciones',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 0, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255), //color
                    ),
                    item4(context, ''),
                    const Divider(
                      color: Color.fromARGB(255, 199, 199, 199), //color
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text(
                  'Pag 4',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                actions: [
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Nada aun');
                      }
                    },
                  ),
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.offline_bolt_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Nada aun');
                      }
                    },
                  ),
                ],
                floating: false,
                pinned: false,
                expandedHeight: 80.0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    
                  ],
                ),
              ),
            ],
          ),
        ],
        onPageChanged: (index) {
          _navigateToPage(index);
        },
      ),
      /*SE HA MODIFICADO EL BOTTOM BAR, AL COMIENZO DEL CÓDIGO ESTÁN Los INDEX DE LAS PANTALLAS, SE PUEDE DEJAR NAVEGACIÓN MEDIANTE GESTO E ÍCONO
      HAY QUE REDEFINIR EL NOMBRE DE LAS PANTALLAS, RECUERDA QUE LOS ITEMS ESTÁN EN EN ARCHIVO ITEMS.DART
      AL NAVEGAR TE DARÁS CUENTA QUE REPITE LA ÚLTIMA NAVEGACIÓN, ESO ES PORQUE FALTA UN CustomScrollView, se agregó uno nuevo, coordinadores, más arriba*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _navigateToPage,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey, // Color para elementos inactivos
        //unselectedIconTheme: Colors.grey, // Color de íconos inactivos
        items: List.generate(
          _screenTitles.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(_screenIcons[index]),
            label: _screenTitles[index],
          ),
        ),
      ),
    );
  }
}
