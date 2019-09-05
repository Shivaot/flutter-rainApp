import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //ovveriding createState() in StatefuWidget
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _increment_money = 0;
  void _money() {
    setState(() {
      _increment_money += 100;
    });
  }
  void _dmoney(){
    setState(() {
          _increment_money-=100;
        });
  }
  void _reset(){
    setState(() {
          _increment_money=0;
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.indigo[200],
      ),
      
      
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
                child: new Text(
              "Get Rich!",
              style: new TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey[300]),
            )),
          
            //MONEY 
            new Expanded(
              child: new Center(
                  child: new Text('\$$_increment_money',
                      style: new TextStyle(
                          fontSize: 65.0,
                          fontWeight: FontWeight.w800,
                          color: _increment_money>5000?Colors.greenAccent:Colors.lightBlue
                           
                          ))
                          ),
            ),
        
        
            //RAIN
            new Expanded(
              child: new Center(
                child: new FlatButton(
                    //padding: new EdgeInsets.all(5.5),
                    color: Colors.indigo[200],
                    textColor: Colors.white,
                    onPressed: _money,
                    child: new Text(
                      "Let It Rain",
                      style: new TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ),
            ),
        

            //RESET
            new Expanded(
              child: new Center(
                child: new FlatButton(
                    //padding: new EdgeInsets.all(5.5),
                    color: Colors.indigo[200],
                    textColor: Colors.white,
                    onPressed: _reset,
                    child: new Text(
                      "Reset",
                      style: new TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ),
            ),
        
        
        
            //LET GO
             new Expanded(
              child: new Center(
                child: new FlatButton(
                    //padding: new EdgeInsets.all(5.5),
                    color: Colors.indigo[200],
                    textColor: Colors.white,
                    onPressed: _dmoney,
                    child: new Text(
                      "Let It Go",
                      style: new TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ),
            ),


            
          
          
          ],
        ),
      ),

      bottomNavigationBar: new BottomNavigationBar(items: [
         new BottomNavigationBarItem(icon:new Icon(Icons.add), title: new Text("Add")),
         new BottomNavigationBarItem(icon:new Icon(Icons.restore), title: new Text("Reset")),
         new BottomNavigationBarItem(icon:new Icon(Icons.remove), title: new Text("Remove")),
        ],
       onTap: (int i) { if(i==0){
         _money();
       }else if (i==2) {
         _dmoney();
       }
       else if(i==1){
         _reset();
       }
       }
       ), 



    );
  }
}
