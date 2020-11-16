import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 4), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen())));
  }

  @override
  Widget build(BuildContext context) {

    final _width = MediaQuery.of(context);
    final _height = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: _height.size.height,
          width: _width.size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/Kodmy.png', height: 150.0,),
                ],
              ),
              SizedBox(height: 20),
              Text("KODMY", style: TextStyle(color: Color(0xff48AFC8), fontSize: 30,letterSpacing: 1.0, fontWeight: FontWeight.w100),),
              Text("We bring technology and innovations",
                style: TextStyle(color: Colors.black54, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w300,),),
              Text("to your fingertips",
                style: TextStyle(color: Colors.black54, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w300,),),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff48AFC8),
                    ),
                    child: Center(
                      child: Text("EXPLORE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, letterSpacing: 1.0),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}