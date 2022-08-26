import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo mise en page'),),
      body: Column(           // La plupart des layout pour telephones commencent avec une column
        // TODO jouer entre les differents valeurs de MainAxisAlignment
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                flex: 2,
                child:
                Container(
                  margin: EdgeInsets.all(5),  // Ca prend un container pour les bordures et les marges
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                  child: const Padding(             // Le padding se fait en encapsulant dans le widget Padding
                    padding: EdgeInsets.all(8.0),
                    child: Text("Je prends 2/3"),
                  ),
                ),
              ),
              Expanded(
                flex: 1, // pas forcement necessaire parce que 1 c'est la valeur par defaut
                child:
                Container(
                  margin: EdgeInsets.all(5),  // Ca prend un container pour les bordures et les marges
                  height: 200,
                  color: Colors.white,
                  child: Row(
                      children: [
                        Expanded(
                            child:
                            Container(
                              child: Text("YO", style: TextStyle(color: Colors.red),),
                            ),
                        ),
                        Expanded(
                          child:
                          Container(
                            child: Column(
                              children: [
                                Expanded(
                                    child:
                                    Container(

                                    ),
                                ),
                                Expanded(
                                    child:
                                    Container(
                                      color: Colors.black,
                                    ),
                                ),
                              ],
                            ),

                          ),
                        ),
                      ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // fonction anonyme qui ne fait rien
        tooltip: 'Increment',   // c'est pour les non voyants qu'ils sachent ce que fait le bouton
        child: Icon(Icons.add),
      ),
    );
  }

}
