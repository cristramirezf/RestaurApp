import 'package:flutter/material.dart';
import 'main.dart';


class Cocinas extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

        actions: <Widget>[
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Cocina"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(

          child: ListView.builder(

            itemCount: 15,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, position) {
              int pos = position+1;
              return Padding(
                padding: const EdgeInsets.all(4.0),
                
                child: MaterialButton(
                  height: 100,
                  color: Colors.green,
                  child: Text("Pedido $pos"),
                  onPressed: () {
          //aquí van las acciones al hacer click
                  },
                ),

              );
            },
          ),
        ),
      ),
      //     floatingActionButton: FloatingActionButton(
      //           onPressed: _incrementCounter,
      //       tooltip: 'Increment',
      //       child: Icon(Icons.add),
      //     ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

