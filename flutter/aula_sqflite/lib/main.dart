import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SQFlite',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? idContato;

  _openDB() async {
    var dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, 'banco.db');
    var myDB = await openDatabase(
      path, 
      version: 1,
      onCreate: (db, versaoRecnete) async {
        String sql = "CREATE TABLE contatos (id INTERGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR)";
        await db.execute(sql);
      }
    );
    print('Banco: ' + myDB.isOpen.toString());
    return myDB;
  }

  _saveDB() async {
    Database db = await _openDB();
    Map<String, dynamic> dadosContato = {
      'nome': 'Dalila'
    };
    setState(() async {
        idContato = await db.insert('contatos', dadosContato);
      }
    );
    print(idContato);
  }


  @override
  Widget build(BuildContext context) {
    _saveDB();
    return Scaffold(
      appBar: AppBar(
        title: const Text("SQFlite"),
        backgroundColor: const Color.fromARGB(255, 66, 203, 212),
      ),
      body: Center(
        child: Column(
          children: [
            Text('$idContato')
          ]
        )
      )
    );
  }
}