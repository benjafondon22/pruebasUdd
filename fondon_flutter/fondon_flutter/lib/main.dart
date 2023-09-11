import 'package:flutter/material.dart'; 
import 'package:flutter/foundation.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MyApp()); 

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
  scheme: FlexScheme.ebonyClay,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,

),
darkTheme: FlexThemeData.dark(
  scheme: FlexScheme.ebonyClay,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,

),


      home: const HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {

  const HomeApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fondon'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search),
            onPressed:() {
              if (kDebugMode) {
                print('Icono search seleccionado');
              }
            },
          ),

          IconButton(icon: const Icon(Icons.favorite),
            onPressed:() {
              if (kDebugMode) {
                print('Icono favorite seleccionado');
              }
            },
          ),
        ],

        
      ),

      body: ListView(
        children: [
          const Text("Deportes",style: TextStyle(fontSize:30),),
          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Futbol.jpg'), 
                ),
            title: const Text('Futbol'),
            subtitle: const Text('Subtítulo de futbol'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),

          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Tenis.jpg'), 
                ),
            title: const Text('Tenis'),
            subtitle: const Text('Subtítulo de tenis'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),

          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Basketball.jpg'), // Agrega 'assets/' aquí
                ),
            title: const Text('Basketball'),
            subtitle: const Text('Subtítulo de basketball'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),

          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Golf.jpg'), 
                ),
            title: const Text('Golf'),
            subtitle: const Text('Subtítulo de golf'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),
          
          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Atletismo.jpg'),
                ),
            title: const Text('Atletismo'),
            subtitle: const Text('Subtítulo de atletismo'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),

          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Pingpong.jpg'), 
                ),
            title: const Text('Pingpong'),
            subtitle: const Text('Subtítulo de pingpong'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),

          ListTile(
            leading: const CircleAvatar(child: Text('1'), backgroundColor: Colors.green,),
            title: const Text('Otro deporte'),
            subtitle: const Text('Subtítulo de otro deporte'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),

          ListTile(
            leading: const CircleAvatar(child: Text('2'), backgroundColor: Colors.lightBlue,),
            title: const Text('Otro deporte 2'),
            subtitle: const Text('Subtítulo de otro deporte 2'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),
          
          ListTile(
            leading: const CircleAvatar(child: Text('3'), backgroundColor: Colors.orange,),
            title: const Text('Otro deporte 3'),
            subtitle: const Text('Subtítulo de otro deporte 3'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),

          const Divider(),

          ListTile(
            leading: const CircleAvatar(child: Text('4'), backgroundColor: Colors.red,),
            title: const Text('Otro deporte 4'),
            subtitle: const Text('Subtítulo de otro deporte 4'),
            trailing: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Ver mas');
                    }
                  },
                  child: const Text('Ver mas'),
                ),
          ),
          const Divider(),
        ],
      ),
            
    bottomNavigationBar: Container(
        color: Theme.of(context).primaryColor,
        height: 56,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Colors.white),  
            Icon(Icons.favorite, color: Colors.white),  
            Icon(Icons.settings, color: Colors.white),  
            Icon(Icons.search, color: Colors.white),  
          ],
        ),
      ),
    );
  }
}