import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
String _infoText = "Pode Entrar!";
  int _pleople = 0;
  void _chancePeople(int delta){
setState(() {
  _pleople +=delta;

  if(_pleople <10){
    _infoText = "Bem Vindos!!";
  } else if( _pleople <= 10){
    _infoText = "Pode entrar!!";
  }else {
    _infoText = "Lotado!";
  }
});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_pleople",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  FlatButton(
                        onPressed: () {_chancePeople(1);},
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  FlatButton(
                        onPressed: () {_chancePeople(-1);},
                        child: Text(
                          "-1",
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        )),
                  ),]
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}

