import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Álcool x Gasolina",
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => const MyHomePage()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingControllerAlcool = TextEditingController();
  TextEditingController _textEditingControllerGasolina = TextEditingController();
  double resultado = 0.0;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool x Gasolina"),
        backgroundColor: const Color.fromARGB(128, 0, 128, 189),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Álcool x Gasolina')
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/images/alcool-gasolina.png'),
                  width: 400,
                  height: 600
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Valor do álcool")
                  ),
                  controller: _textEditingControllerAlcool,
                  onSubmitted: (String valor) {
                    print('Valor' + _textEditingControllerAlcool.text);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Valor da gasolina")
                  ),
                  controller: _textEditingControllerGasolina,
                  onSubmitted: (String valor) {
                    print('Valor' + _textEditingControllerGasolina.text);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resultado = double.parse(_textEditingControllerAlcool.text) + double.parse(_textEditingControllerGasolina.text);
                    });
                  },
                  child: const Text("Calcular")
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Resultado:' + resultado.toString())
              )
            ]
          )
        ),
      )
    );
  }
}