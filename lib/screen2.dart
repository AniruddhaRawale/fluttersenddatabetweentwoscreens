import 'package:flutter/material.dart';

/*
class screentwo extends StatelessWidget {

//we mentioned string variable here
//add a constructor here
  String value;
  screentwo({this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(

        //and mentioned that here so we can print it
        child: Text(value),
      ),
    );
  }
}
*/


class screentwo extends StatefulWidget {
  /*
  to get a value from one page you should mention string
  name as below and container mentioning the string
   we dont need to mention key or required but itis advised to do
   so as mentioned below
   we have to over ride the createstate ie defaultstate to the state
   and its value
*/

  List value;
  screentwo({Key key, @required this.value}) : super(key: key);

  @override
  _screentwoState createState() => _screentwoState(value);
}

class _screentwoState extends State<screentwo> {

  /*
  * take the value of  override state and variable so we can use it here
  * to override
  * */
  List value;
  _screentwoState(this.value);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen 2"
        ),
      ),
      body: Center(
        child: Text(
          //mention the value of the
          value[1],
        ),
      ),
    );
  }
}
