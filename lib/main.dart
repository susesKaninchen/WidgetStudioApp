import 'package:flutter/material.dart';
import 'GlobalStyle.dart';

const bool drawerEnabeld = true;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sabai-Sabai',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Sabai-Sabai'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ######################################################################### Table
    Widget tableView = new Column(children: <Widget>[
      _buildSeparation("Heute"),
      //new Table(children: termin, border: new TableBorder(horizontalInside: new BorderSide(color: Colors.grey , width: 1.0))),
      new Column(
          children: <Widget>[
            new ListTile(
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(width: 90.0,
                    child: new Text("Uhrzeit", style: new TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold)),),
                  new Expanded(child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[new Text(
                          "Massageart (lange in Minuten)", style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                      new Text("Kundenname", style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.face, size: 30.0,),
                          new Container(margin: new EdgeInsets.only(
                              right: 12.5, left: 12.5),
                            child: new Icon(
                              Icons.monetization_on, size: 30.0,),),
                          new Icon(Icons.build)
                        ],)
                      ])),
                ],),),
            new Container(decoration: new BoxDecoration(
                border: new Border(bottom: new BorderSide())),),
            _buildExpansionTitle(
                "18:00\n-19:00", "Ölmassage (60 min)", "Marco Hansen",
                false, _buildExpandExpandsionTitle()),
            _buildExpansionTitle(
                "19:00\n-19:30", "Ölmassage (30 min)", "Peter Hansen",
                true, _buildExpandExpandsionTitle()),
            _buildExpansionTitle(
                "19:30\n-20:00", "Kräuterstempelmassage (30 min)",
                "Harrison Ford", true, _buildExpandExpandsionTitle()),
          ]
      ),
      _buildSeparation("Morgen"),
    ]);
    // #########################################################################

    return new Scaffold(
      body: new Center(
        child:
        new Container(
          margin: new EdgeInsets.fromLTRB(0.0, 24.5, 5.0, 0.0),
          child: new Row(
            children: <Widget>[
              new Column(children: <Widget>[
                new Container(
                    child: new Column(children: <Widget>[new Container(
                        margin: new EdgeInsets.all(10.0),
                        color: Colors.grey,
                        child: new Text(
                            "Termin erstellen", style: new TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
                    new Container(
                        margin: new EdgeInsets.all(10.0),
                        color: Colors.grey,
                        child: new Text(
                            "Studio bearbeiten", style: new TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
                    ],)),
              ],
              ),

              // Row Element
              new Expanded(child: new Container(decoration: new BoxDecoration(
                  border: new Border(
                      left: new BorderSide(color: Colors.grey))),
                child: new ListView(children: <Widget>[tableView],),))
              // Row End
            ],),),

      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget _buildExpansionTitle(String time, String typeOfMassage, String name,
      bool paid, Widget expand) {
    return new ExpansionTile(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(width: 90.0,
              child: new Text(time, style: new TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.bold)),),
            new Expanded(
              child: new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[new Text(
                    typeOfMassage, style: new TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold)),
                new Text(name, style: new TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold)),
                new Row(children: <Widget>[
                  new Container(margin: new EdgeInsets.only(right: 12.5),
                    child: new Icon(Icons.face, size: 30.0,),),
                  (paid ? new Icon(Icons.check_circle_outline) : new Icon(
                      Icons.radio_button_unchecked)),
                ],),

                ],),),
          ],),
        children: <Widget>[
          expand
        ]
    );
  }

  Widget _buildExpandExpandsionTitle() {
    return new Column(children: <Widget>[new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Container(margin: new EdgeInsets.all(5.0),
          child: new RaisedButton(
            child: new Text("Termin Absagen"), onPressed: () {},),),
        new Container(margin: new EdgeInsets.all(5.0),
          child: new RaisedButton(
            child: new Text("Termin ändern"), onPressed: () {},),),
        new Container(margin: new EdgeInsets.all(5.0),
          child: new RaisedButton(
            child: new Text("Bemerkung senden"), onPressed: () {},),),

      ],),
    new Row(children: <Widget>[
      new Text("Bemerkung:"),
      new Text(
          "Ich bin schlecht n fd jif hidhig jjdshikufdujv bdj, vbh gvbkj fjflkdnlejo ghöfhdizgvkjbcjbclhvjhb chjdh kjfhls hj, hlahl h fhof hs", softWrap: true,)
    ],),
    ]);
  }

  Container _buildSeparation(String text) {
    return new Container(
      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
      child: new Center(child: new Text(
        text,
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black
        ),
      ),
      ),
      color: Colors.grey[300],
    );
  }
}
