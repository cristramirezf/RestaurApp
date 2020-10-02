import 'package:flutter/material.dart';

class Carta extends StatelessWidget {
  //Stateless = immutable = cannot change object's properties
  //Every UI components are widgets
  @override
  Widget build(BuildContext context) {
    //Now we need multiple widgets into a parent = "Container" widget
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                ),
                //Need to add space below this Text ?
                new Text("Ofrezca a nuestros clientes escanear nuestra carta con la cámara de su teléfono, de esta forma contribuiremos al distanciamiento social por la pandemia del COVID-19 :)",
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('Carta'),
            ),
            body: new ListView(
              children: <Widget>[
                new Image.asset(
                    'assets/images/menu.png',
                    fit: BoxFit.cover
                ),
                //You can add more widget bellow
                titleSection
              ],
            )
        )
    );//Widget with "Material design"
  }
}
