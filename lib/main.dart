import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stacks'),),
        body: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment(-0.5, -0.5), // las coordenadas son en x, y
                child: Text('1')
            ),
            Align(
                alignment: Alignment(0, -0.5),
                child: Text('2')
            ),
            Align(
                alignment: Alignment(0.5, -0.5),
                child: Text('3')
            ),
            Align(
                alignment: Alignment(0.5, 0),
                child: Text('4')
            ),
            Align(
                alignment: Alignment(0.5, 0.5),
                child: Text('5')
            ),
            Align(
                alignment: Alignment(0, 0.5),
                child: Text('6')
            ),
            Align(
                alignment: Alignment(-0.5, 0.5),
                child: Text('7')
            ),
            Align(
                alignment: Alignment(-0.5, 0),
                child: Text('8')
            ),
            Align(
                alignment: Alignment(0, 0),
                child: Text('9')
            ),

          ],
        ),
      ),
    );
  }
}

// exercise 2: responsive design with expanded and flexible
class App2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stacks'),),
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 1, // TODO: con esto se puede distribuir la proporcionalidad
                child: cuadro(Colors.red,"Uno")),
            Expanded(
                flex: 2,
                child: cuadro(Colors.lime, "Dos")),
            Expanded(
                flex: 3,
                child: cuadro(Colors.teal, "Tres"))
          ],
        ),
      ),
    );
  }

  Widget cuadro(color, msg){
    return Container(
      width: 400,
      height: 200,
      color: color,
      child: Center(child: Text(msg)),
    );
  }
}

// exercise 3: Entrada de datos y desencadenar eventos
class App3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController tec1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StateFul Widget'),
        ),

        body:Column(
          children: <Widget>[
            TextField(
              controller: tec1, // TODO: aqui se guarda el texto ingresado
              decoration: InputDecoration(
                hintText: 'Ingrese un número'
              ),
              keyboardType: TextInputType.number,
            ),

            FlatButton(onPressed:(){
              setState(() {
                print('data = ${tec1.text}');
              });
            }, child: Text('Ver data'))


          ],
        ) ,
      ),
    );
  }
}