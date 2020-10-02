import 'package:flutter/material.dart';
import 'package:restaurapp/plato.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menú"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Header $index',
                  style: Theme.of(context).textTheme.body2,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      //padding: EdgeInsets.only(top: 8.0),
                      title: Text('Nested list item $index'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Plato()),
                        );
                      },
                    );
                  },
                  itemCount: 6, // this is a hardcoded value
                ),
              ],
            ),
          );
        },
        itemCount: 4, // this is a hardcoded value
      ),
    );
  }
}
