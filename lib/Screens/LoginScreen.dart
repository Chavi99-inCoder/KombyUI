import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/FeaturedScreen.dart';
import 'package:kodmyui/Screens/SplashScreen.dart';
import 'package:kodmyui/models/HomeModel.dart';
import 'package:kodmyui/widgets/TextFieldWidget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    final model = Provider.of<HomeModel>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFBFDFF),
        elevation: 0,
      ),
      backgroundColor: Color(0xffFBFDFF),
      body: Container(

        child: ListView(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SplashScreen()));
                      },
                      child: Icon(Icons.arrow_back_ios,
                        color: Color(0xffA1A8B9),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Hello", style: TextStyle(color: Color(0xff36455A), fontSize: 30,letterSpacing: 1.0, fontWeight: FontWeight.w700),),
                        SizedBox(height: 10),
                        Text("Kodmy is all about technology.", style: TextStyle(color: Color(0xff495566), fontSize: 16,letterSpacing: 1.0, fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextFieldWidget(
                          hintText: 'Email',
                          obscureText: false,
                          prefixIconData: Icons.mail_outline,
                          suffixIconData: model.isValid ? Icons.check : null,
                          onChanged: (value) {
                            model.isValidEmail(value);
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            TextFieldWidget(
                              hintText: 'Password',
                              obscureText: model.isVisible ? false : true,
                              prefixIconData: Icons.lock_outline,
                              suffixIconData: model.isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff48AFC8),
                        ),
                        child: Center(
                          child: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, letterSpacing: 1.0),),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account ?  ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            //color: Colors.orange,
                            border: Border.all(color: Color(0xff48AFC8)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff48AFC8), fontSize: 15, letterSpacing: 1.0),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}