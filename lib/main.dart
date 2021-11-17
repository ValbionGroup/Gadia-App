import 'package:flutter/material.dart';

// import 'package:shake_flutter/shake_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Gadia',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Main(),
      },
    );
  }
}

class Main extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Text(
                'Gadia',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color(0xFF7E3AF2),
            ),
            child: Text(
              "Lucas\nESPIET",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          ListTile(
            title: Text("Vue d'ensemble"),
            leading: Icon(Icons.dashboard),
            selected: true,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Mes études",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text("Emploi du temps"),
            leading: Icon(Icons.event),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Devoirs"),
            leading: Icon(Icons.text_snippet),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Notes"),
            leading: Icon(Icons.school),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Vie scolaire"),
            leading: Icon(Icons.assignment_late),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Suivi administratif"),
            leading: Icon(Icons.folder),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Messagerie"),
            leading: Icon(Icons.message),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Carte étudiante"),
            leading: Icon(Icons.badge),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Paramètres"),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
      appBar: AppBar(
        leading: new IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        title: const Text("Vue d'ensemble"),
        backgroundColor: const Color(0xFF7E3AF2),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.notifications)),
        ],
      ),
      body: const Center(
        child: Text('Gadia • Prochain niveau de Vie Scolaire'),
      ),
    );
  }
}
