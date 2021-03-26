import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
              title: new Text('Delivery App',style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.amber
          ),
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              new Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.green
                    ),
                    child: new Icon(Icons.home),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(right:60.0,top:80.0),
                    height: 80.0,
                    width: 80.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Colors.red
                    ),
                    child: new Icon(Icons.store),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(left:60.0,top:80.0),
                    height: 80.0,
                    width: 80.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Colors.purple
                    ),
                    child: new Icon(Icons.motorcycle),
                  )
                ],
              ),
              new Row(children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Container(
                      height: 70.0,
                      child: new RaisedButton(
                         color: Colors.amber ,
                         child: new Text('MERCHANT', style: new TextStyle(fontSize: 20.0),),
                          onPressed: (){Navigator.of(context).pushNamed('/MerchantRegistration');}),
                    ),
                  ),
                )
              ]
              ),
              new Row(children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Container(
                      height: 70.0,
                      child: new RaisedButton(
                          color: Colors.amber ,
                          child: new Text('DRIVER', style: new TextStyle(fontSize: 20.0),),
                          onPressed: (){}),
                    ),
                  ),
                )
              ]
              )
            ],
          ),
        ),

    );
  }

}

