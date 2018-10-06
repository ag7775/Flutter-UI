import 'package:flutter/material.dart';
import 'package:flutter_assignment/Display.dart';
class LayoutScreen extends StatefulWidget{
  @override
  LayoutScreenState createState() {
    return new LayoutScreenState();
  }
}
class LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  stops: [0.0,1.0],
                  colors: [const Color(0xFFFAA467),const Color(0xFFF6458B)],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            Positioned(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/logo.png'),
                      height: 150.0,
                    ),
                    SizedBox(height: 30.0,),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            elevation: 8.0,
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Icon(Icons.mail),
                                          Text("Enter a Username",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
                                          ,Text(" ")
                                        ],
                                      ),
                                    ),
                                    TextField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                        onChanged: (text) {}
                                    ),
                                    SizedBox(height: 30.0),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Icon(Icons.lock),

                                          Text("Password",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                                          Icon(Icons.remove_red_eye)
                                        ],
                                      ),
                                    ),
                                    TextField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                        onChanged: (text) {}
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            alignment: Alignment.topCenter,
                            margin:EdgeInsets.fromLTRB(0.0, 230.0, 0.0, 0.0),
                            child: RaisedButton(
                              elevation: 7.0,
                              child: Text("LOGIN",style:
                              TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,color: Colors.white)),
                              color: Color(0xFFF7677E),
                              padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder:
                                    (context)=>Display()));
                                },
                            ),
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      )
      ,
    );

  }
}
