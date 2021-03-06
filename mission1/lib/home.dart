import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  Color favcolor = Colors.white;
  int favvalue;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Apex Legends"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    // Colors.red,
                    // Colors.redAccent,
                    // Colors.deepOrange,
                    // Colors.orange,
                    Colors.orangeAccent,
                    Colors.white,
                    // Colors.white
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Flexible(
                  //logo besar 1
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(3),
                    child: Image(
                      width: 400,
                      image: AssetImage("Assets/Apex-Legends-0.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  //4 gambar kecil
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(),
                            child: Image(
                              image: AssetImage("Assets/Apex-Legends-1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(),
                            child: Image(
                              image: AssetImage("Assets/Apex-Legends-2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(),
                            child: Image(
                              image: AssetImage("Assets/Apex-Legends-3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image(
                              image: AssetImage("Assets/Apex-Legends-4.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                      child: Container(
                    child: ListView(
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Apex Legends",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        )),
                        Container(
                          child: Text(
                            "THE LEGENDS",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "Choose from a lineup of outlaws, soldiers, misfits, and misanthropes, each with their own set of skills. The Apex Games welcome all comers – survive long enough, and they call you a Legend."),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "YOUR SQUAD",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "Pick your Legend and join forces with other players, combining your unique skills to form the ultimate squad."),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "STRATEGIC BATTLE ROYALE",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "If you're going to survive the Apex Games, you have to think fast. Master your Legend's abilities, make strategic calls on the fly, and use your team's strengths to your advantage in vicious 60-player matches."),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "INNOVATIVE COMBAT",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "Experience the next evolution of battle royale with Respawn Beacons you can use to ressurect your teammates, Smart Comms to hel you communicate, Intelligent Inventory so you can grab only what you need, and all-new way to drop into the action with Jumpmaster deployment."),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "REGULAR SEASONS",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "Compete every season to unlock new Legends, fresh weapons, themed loot, and more."),
                          margin: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  )),
                ),
              ],
            ),
            Container( alignment: Alignment.topRight, 
            margin: EdgeInsets.all(3),        
                child: FloatingActionButton(
              onPressed: () {
                  setState(() {
                    if (favcolor == Colors.red) {                   
                      favcolor = Colors.white;
                      
                    }else if (favcolor == Colors.white){                    
                      favcolor = Colors.red;
                     
                    }
                  });
              },
              child: Icon(Icons.favorite, color: favcolor),
              
            ),
            
            )
          ],
        ),
      ),
    );
  }
}
