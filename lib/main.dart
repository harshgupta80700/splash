import 'package:flutter/material.dart';

main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    
    super.initState();
     _controller = AnimationController(vsync: this,
     duration: Duration(seconds: 3));
     _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      
      body: Center(
        child: FadeTransition(
          opacity: _animation,
                  child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Container(
              height: 200.0,
              width: 200.0,
              
              margin: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 15.0),
              child: Image.asset("assets/akg.png"),
            ),
            SizedBox(height: 70.0,),
            Text("AKGEC",
            style:  TextStyle(
              fontSize: 40.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
            ),),
            SizedBox(height: 10.0),
            Text("LATE ENTRY PORTAL",
            style:  TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              
              color: Colors.blue
            ),),

              
              
            ],
          ),
        ),
      )
    );
  }
}