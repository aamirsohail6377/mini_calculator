import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}
class HomePageState extends State<HomePage> {
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  var num1=0,num2=0,sum=0;
  void doAdd(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void doSub(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void doMul(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void doDev(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1~/num2;
    });
  }
  void doClear(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator App',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Output : $sum',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 50.0)),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "First Input",
                hintText: "Enter First Number",
                border: OutlineInputBorder(),
              ),
              controller: t1,
            ),
            SizedBox(height: 20.0, width: 20.0,),
            TextField(
              keyboardType: TextInputType.number,
              obscureText: false,
              decoration: InputDecoration(
                labelText: "Second Input",
                hintText: "Enter Second Number",
                border: OutlineInputBorder(),
              ),
              controller: t2,
            ),
            SizedBox(height: 40.0,),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                    child: Text('Add'),
                    onPressed: doAdd
                ),
                RaisedButton(
                  child: Text('Sub'),
                  onPressed: doSub,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0,)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Mult'),
                  onPressed: doMul,
                ),RaisedButton(
                  child: Text('Div'),
                  onPressed: doDev,
                ),
              ],
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: doClear,
        child: Text('C',
        style: TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize: 30.0,

          ),
        ),
        backgroundColor: Colors.grey[600],
      ),
    );

  }
}

