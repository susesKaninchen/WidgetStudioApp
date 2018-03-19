import 'package:flutter/material.dart';
import 'GlobalStyle.dart';

class AktionErstellenWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AktionErstellen();
  }


}

class AktionErstellen extends State<AktionErstellenWidget> {
  DateTime date = new DateTime.now();
  int _lange = 15;
  int _massage = 15;
  int _mitarbeiter = 15;

  @override
  Widget build(BuildContext context) {
    return new Container(color: Colors.white, margin: new EdgeInsets.all(0.0),
      child: new ListView(children: <Widget>[

        new Row(children: <Widget>[
          new Container(margin: new EdgeInsets.all(10.0),
            child: new Text("Datum: $date", style: Style.TITLE_LARGE,),),
          new RaisedButton(
              child: new Text("Datum auswählen"), onPressed: () async {
            date = await
            showDatePicker(
                context: context,
                initialDate: date,
                firstDate: new DateTime(2015, 8),
                lastDate: new DateTime(2101)
            );
            TimeOfDay time = await
            showTimePicker(
                context: context,
                initialTime: new TimeOfDay.now()
            );
            print(time.hour);
            date =
                date.add(new Duration(hours: time.hour, minutes: time.minute));
          }),

        ],),
        new Row(
          children: <Widget>[
            new Container(margin: new EdgeInsets.all(10.0),
              child: new Text("Länge: ", style: Style.TITLE_LARGE,),),
            new Material(child: new DropdownButton(
              value: _lange,
              items: <DropdownMenuItem<int>>[
                new DropdownMenuItem(
                  child: new Text('15 Minuten'),
                  value: 15,
                ),
                new DropdownMenuItem(
                  child: new Text('20 Minuten'),
                  value: 20,
                ),
                new DropdownMenuItem(
                  child: new Text('30 Minuten'),
                  value: 30,
                ),
                new DropdownMenuItem(
                  child: new Text('60 Minuten'),
                  value: 60,
                ),
                new DropdownMenuItem(
                  child: new Text('90 Minuten'),
                  value: 90,
                ),
                new DropdownMenuItem(
                  child: new Text('120 Minuten'),
                  value: 120,
                ),
              ],
              onChanged: (int value) {
                setState(() {
                  _lange = value;
                });
              },
            ),),

          ],),
        new Row(
          children: <Widget>[new Container(margin: new EdgeInsets.all(10.0),
            child: new Text("Massage: ", style: Style.TITLE_LARGE,),),
          new Material(child: new DropdownButton(
            value: _value,
            items: <DropdownMenuItem<int>>[
              new DropdownMenuItem(
                child: new Text('Tai Massage'),
                value: 15,
              ),
              new DropdownMenuItem(
                child: new Text('Kreuterstempel'),
                value: 20,
              ),
              new DropdownMenuItem(
                child: new Text('Hot Ston'),
                value: 30,
              ),
              new DropdownMenuItem(
                child: new Text('Tolle'),
                value: 60,
              ),
            ],
            onChanged: (int value) {
              setState(() {
                _value = value;
              });
            },
          ),),

          ],),
        new Row(
          children: <Widget>[new Container(margin: new EdgeInsets.all(10.0),
            child: new Text("Mitarbeiter: ", style: Style.TITLE_LARGE,),),
          new Material(child: new DropdownButton(
            value: _mitarbeiter,
            items: <DropdownMenuItem<int>>[
              new DropdownMenuItem(
                child: new Text('Marco Gabrecht'),
                value: 15,
              ),
              new DropdownMenuItem(
                child: new Text('Johannes'),
                value: 20,
              ),
              new DropdownMenuItem(
                child: new Text('Nalisa'),
                value: 30,
              ),
              new DropdownMenuItem(
                child: new Text('Sabai'),
                value: 60,
              ),
            ],
            onChanged: (int value) {
              setState(() {
                _mitarbeiter = value;
              });
            },
          ),),
          ],),
      ],),);
  }

}