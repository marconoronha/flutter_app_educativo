import 'package:flutter/material.dart';

class PaginaSobreApp extends StatefulWidget {
  @override
  _PaginaSobreAppState createState() => _PaginaSobreAppState();
}

class _PaginaSobreAppState extends State<PaginaSobreApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre o App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Text( "Esse app visa ensinar letras do alfabeto em português e números de 1 a 20 em inglês à crianças. Desenvolvido para projeto de Laborátorio de Desenvolvimento de Dispositivos Móveis"
        ),
      ),
    );
  }
}
