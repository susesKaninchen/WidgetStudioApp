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
    // ################################Drawer Element
    Drawer firstDrawer = new Drawer(
        child: new ListView(children: <Widget>[new Row(
          children: <Widget>[
            new Container(margin: new EdgeInsets.all(20.0),
              child: new Icon(Icons.add_a_photo, size: 60.0,),),
            new Text("Marco Gabrecht", style: Style.TITLE_LARGE),
            new Container(margin: new EdgeInsets.all(10.0),
              child: new Icon(Icons.edit, size: 20.0,),),
          ],),
        new Container(
            margin: new EdgeInsets.all(10.0),
            color: Colors.grey,
            child: new Text("Termin erstellen", style: new TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black))),
        new Container(
            margin: new EdgeInsets.all(10.0),
            color: Colors.grey,
            child: new Text("Studio bearbeiten", style: new TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black))),
        ],));
    // #####################################################
    // #####################################################Termine Tabel Row
    List<TableRow> termin = new List<TableRow>();
    termin.add(
        new TableRow(
          children: <Widget>[new Text("Uhrzeit", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Massageart (länge)", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Kudnenname", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Bezahlt", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Bemerkung", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],));
    termin.add(
        new TableRow(
          children: <Widget>[new Text("17:30\n-18:00", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Ölmassage (30 Minuten)", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Johannes Müller", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Icon(Icons.check_circle_outline),
          new Text("10 Minuten später", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],));
    termin.add(
        new TableRow(
          children: <Widget>[new Text("18:00\n-19:00", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Ölmassage (60 Minuten)", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Text("Marco Hansen", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          new Icon(Icons.check_circle_outline),
          new Text("", style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],));
    // #########################################################################
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
                "18:00\n-19:00", "Ölmassage (60 Minuten)", "Marco Hansen",
                false, _buildExpandExpandsionTitle()),
            _buildExpansionTitle(
                "19:00\n-19:30", "Ölmassage (30 Minuten)", "Peter Hansen",
                true, _buildExpandExpandsionTitle()),
            _buildExpansionTitle(
                "19:30\n-20:00", "Kräuterstempelmassage (30 Minuten)",
                "Harrison Ford", true, _buildExpandExpandsionTitle()),

          ]
      ),
      _buildSeparation("Morgen"),
    ]);
    // #########################################################################

    return new Scaffold(
      drawer: firstDrawer,
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
            new Row(
              children: <Widget>[
                new ListView(children: <Widget>[
                new Container(
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(color: Colors.grey))),
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
                new Expanded(child:tableView)
                // Row End
              ],),
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
        new Text("Termin Absagen"),
        new Text("Termin vershcieben"),
        new Icon(Icons.dehaze)
      ],),
    new Text("Termin Annehmen"),
    new Text("Termin ablehnen"),
    new Text("Termin ist zugesagt")
    ],);
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
