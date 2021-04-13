import 'package:flutter/material.dart';

class PaginaJogoNumeros extends StatefulWidget {
  @override
  _PaginaJogoNumerosState createState() => _PaginaJogoNumerosState();
}

class _PaginaJogoNumerosState extends State<PaginaJogoNumeros> {

  final List<String> entries = <String>["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen", "Twenty"];
  final List<int> colorCodes = <int>[500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200];
  final List<String> imagesEntries = <String>["assets/one.jpg", "assets/two.jpg", "assets/three.jpg", "assets/four.jpg", "assets/five.jpg", "assets/six.jpg", "assets/seven.jpg", "assets/eight.jpg", "assets/nine.jpg", "assets/ten.jpg", "assets/eleven.jpg", "assets/twelve.jpg", "assets/thirteen.jpg", "assets/fourteen.jpg", "assets/fifteen.jpg", "assets/sixteen.jpg", "assets/seventeen.jpg", "assets/eighteen.jpg", "assets/nineteen.jpg", "assets/twenty.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(15),
            color: Colors.amber[colorCodes[index]],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('${entries[index]}'),
                Image.asset('${imagesEntries[index]}', width: 150, height: 150),
              ],
            ),
          );
        },
      ),
    );
  }
}
