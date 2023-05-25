import 'package:flutter/material.dart';
import 'package:my_project/Onboarding_SignIn_SignUp/onboarding.dart';
import 'package:my_project/Onboarding_SignIn_SignUp/singup.dart';
import 'package:my_project/Onboarding_SignIn_SignUp/signinpw.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => ob()));
                },
                icon: Icon(Icons.arrow_back)),
          ),
          Container(
            margin: EdgeInsets.all(0),
            child: Image.asset(
              'assets/images/iconSignIn.png',
              width: 200,
              height: 200,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "Let's you in",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 300,
            height: 50,
            margin: EdgeInsets.all(5),
            /*decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color.fromARGB(255, 196, 196, 196),
                  width: 1,
                )),*/
            child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/fIcon.png',
                  width: 15,
                  height: 15,
                ),
                style: TextButton.styleFrom(
                  side: BorderSide(
                      width: 1, color: Color.fromARGB(255, 232, 231, 231)),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                label: Text(
                  'Continue with Facebook',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
          ),
          //-----------------------
          Container(
            width: 300,
            height: 50,
            margin: EdgeInsets.all(5),
            child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/gIcon.png',
                  width: 15,
                  height: 15,
                ),
                style: TextButton.styleFrom(
                  side: BorderSide(
                      width: 1, color: Color.fromARGB(255, 232, 231, 231)),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                label: Text(
                  'Continue with Google',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
          ),
          //-------------------------
          Container(
            width: 300,
            height: 50,
            margin: EdgeInsets.all(5),
            child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/aIcon.png',
                  width: 15,
                  height: 15,
                ),
                style: TextButton.styleFrom(
                  side: BorderSide(
                      width: 1, color: Color.fromARGB(255, 232, 231, 231)),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                label: Text(
                  'Continue with Apple',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
          ),
          //--------------------------
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 1,
                  color: Color.fromARGB(255, 232, 231, 231),
                ),
                Container(
                  width: 10,
                ),
                Text(
                  'or',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 73, 72, 72)),
                ),
                Container(
                  width: 10,
                ),
                Container(
                  width: 120,
                  height: 1,
                  color: Color.fromARGB(255, 232, 231, 231),
                )
              ],
            ),
          ),
          //---------------------------------
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => signinpw()));
            },
            child: Container(
                margin:
                    EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                child: Text(
                  'Sign in with password',
                  style: TextStyle(fontSize: 10),
                )),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(228, 48, 45, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          //----------------------------------
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 10,
                    ),
                  ),
                ),
                Container(
                  width: 10,
                ),
                Container(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Color.fromRGBO(207, 49, 46, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
