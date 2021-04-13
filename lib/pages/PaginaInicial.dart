import 'dart:io';
import 'package:flutter/material.dart';
import 'PaginaSobreApp.dart';
import 'PaginaJogoAlfabeto.dart';
import 'PaginaJogoNumeros.dart';



class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {

  void _abrirSobreApp() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaSobreApp())
    );
  }

  void _abrirJogoAlfabeto() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaJogoAlfabeto())
    );
  }

  void _abrirJogoNumeros() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaJogoNumeros())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Educativo"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.info),
              tooltip: "Sobre o App",
              onPressed: _abrirSobreApp)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirJogoAlfabeto,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.amber,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Letras",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset("assets/abc.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirJogoNumeros,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Numbers",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset("assets/coruja.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
