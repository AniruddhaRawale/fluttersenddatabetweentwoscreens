import 'package:flutter/material.dart';
import 'package:pass_data_between_screens/screen2.dart';

void main() => runApp(MyApp());

//in stateless widget to send data from one page
//to another we use simple thing we store value to send in variable
//and in navigation route whenwe go from one page to another we pass that value

//ie we send value from one class to another to do this we have to mention
//the second class name and string value name inside it

//to get value as list you should first mention the list name
//and then change type from string to list and write string name
//instead of var value here write names instrad of value wherever mentioned

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passing Data',
      theme:ThemeData(
        primarySwatch: Colors.indigo
      ),
        home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List value;
  //to get list instead of string use
  //list type
  List<String>names = ['John','andrew'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pass Data"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text){
              value =names;
            },
          ),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => screentwo(value:names)
            ));
          },
          child:Text("Switch"),
          )
        ],
      ),
    );
  }
}

