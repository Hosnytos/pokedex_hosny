import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pokédex - Alpha version'),
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
    final mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _advancedDetails()
            ],
          ),
        ),
      ),
    );
  }

  Widget _advancedDetails() {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Dracaufeu(),
          _smallDivider(),
          _Pikachu()
        ],
      ),
    );
  }

  Widget _smallDivider() {
    return const Divider(
      color: Colors.blueAccent,
      thickness: 0.5,
      height: 5,
      indent: 10,
      endIndent: 10,
    );
  }

  Widget _Dracaufeu() {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Container(
        child: ExpansionTile(
          title: Text(
            "Dracaufeu",
            style: TextStyle(
                color: Colors.blueAccent, fontSize: 18),
          ),
          children: <Widget>[
            Container(
              height: 150,
              width: 300,
              child: Image(image: AssetImage('assets/dracaufeu.png'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              child: Center(
                child: Text(
                    "Description de Dracaufeu",
                    style: TextStyle(fontSize: 16)),
              ),
            )
          ],
        ),
      );
    }
    else{
      return Container(
        child: ExpansionTile(
          title: Text(
            "Dracaufeu",
            style: TextStyle(
                color: Colors.blueAccent, fontSize: 18),
          ),
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: 150,
                  width: 300,
                  child: Image(image: AssetImage('assets/dracaufeu.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Center(
                    child: Text(
                        "Description de Dracaufeu",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
  }

  Widget _Pikachu() {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Container(
        child: ExpansionTile(
          title: Text(
            "Pikachu",
            style: TextStyle(
                color: Colors.blueAccent, fontSize: 18),
          ),
          children: <Widget>[
            Container(
              height: 150,
              width: 300,
              child: Image(image: AssetImage('assets/pikachu.png'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              child: Center(
                child: Text(
                    "Description de Pikachu",
                    style: TextStyle(fontSize: 16)),
              ),
            )
          ],
        ),
      );
    }
    else{
      return Container(
        child: ExpansionTile(
          title: Text(
            "Pikachu",
            style: TextStyle(
                color: Colors.blueAccent, fontSize: 18),
          ),
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: 150,
                  width: 300,
                  child: Image(image: AssetImage('assets/pikachu.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Center(
                    child: Text(
                        "Description de Pikachu",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
  }

}
