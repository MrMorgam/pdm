import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Page',
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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.login_outlined)
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp)
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp)
              )
            ]
          )
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Image(
                    image: AssetImage('assets/images/avatar.png'),
                    width: 150,
                    height: 150
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text("Usuário")
                      )
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text("Senha")
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: ElevatedButton(
                    onPressed: () {
                      //Placeholder
                    },
                    child: const Text("Confirmar")
                  ),
                )

              ]
            ),
            ListView(
              padding: const EdgeInsets.all(8),
              children: const [
                SizedBox(
                  height: 50,
                  width: 400,
                  child: Center(child: Text("Usuário 1")),
                ),
               SizedBox(
                  height: 50,
                  width: 400,
                  child: Center(child: Text("Usuário 2")),
                ),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: Center(child: Text("Usuário 3")),
                ),
              ]
            ),
            const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Image(
                      image: AssetImage('assets/images/avatar.png'),
                      width: 150,
                      height: 150
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child: Center(child: Text("Usuário: Usuário 1")),
                  ),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child: Center(child: Text("Senha: Senha 1")),
                  ),
              
                ]
              ),
          ]
        )
      )
    );
  }
}
