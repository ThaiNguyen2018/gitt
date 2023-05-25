import 'package:flutter/material.dart';
import 'package:my_project/Onboarding_SignIn_SignUp/signin.dart';
import 'package:my_project/Onboarding_SignIn_SignUp/singup.dart';
import 'package:my_project/Home_ActionMenu/homepage.dart';

class signinpw extends StatelessWidget {
  const signinpw({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignInPW());
  }
}

class SignInPW extends StatelessWidget {
  const SignInPW({super.key});

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
                        new MaterialPageRoute(builder: (context) => signin()));
                  },
                  icon: Icon(Icons.arrow_back))),
          Center(
              child: Image.asset(
            'assets/images/iconM.png',
            width: 150,
            height: 150,
          )),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              'Login to Your Account',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Color.fromARGB(255, 241, 241, 241),
            width: 320,
            padding: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.mail,
                  size: 18,
                ),
                border: InputBorder.none,
                hintText: 'Email',
              ),
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 241, 241, 241),
            width: 320,
            padding: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  size: 18,
                ),
                border: InputBorder.none,
                hintText: 'Password',
              ),
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  fillColor: MaterialStatePropertyAll(Colors.red),
                ),
                Text(
                  'Remember me',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, new MaterialPageRoute(builder: (context) => home()));
              ;
            },
            child: Container(
                width: 150,
                margin:
                    EdgeInsets.only(left: 70, right: 70, top: 15, bottom: 15),
                child: Text(
                  'Sign in',
                  textAlign: TextAlign.center,
                )),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(228, 48, 45, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Forgot the password?',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 80,
                  height: 1,
                  color: Color.fromARGB(255, 209, 209, 209),
                ),
                Text(
                  'or continue with',
                  style: TextStyle(
                      color: Color.fromARGB(255, 99, 99, 99),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 80,
                  height: 1,
                  color: Color.fromARGB(255, 209, 209, 209),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 40,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/fIcon.png',
                      width: 15,
                      height: 15,
                    ),
                    label: Text(""),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Color.fromARGB(
                                            255, 213, 213, 213)))))),
              ),
              Container(
                width: 20,
              ),
              SizedBox(
                width: 80,
                height: 40,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/gIcon.png',
                      width: 15,
                      height: 15,
                    ),
                    label: Text(''),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Color.fromARGB(
                                            255, 213, 213, 213)))))),
              ),
              Container(
                width: 20,
              ),
              SizedBox(
                width: 80,
                height: 40,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/aIcon.png',
                      width: 15,
                      height: 15,
                    ),
                    label: Text(''),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Color.fromARGB(
                                            255, 213, 213, 213)))))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                    color: Color.fromARGB(255, 177, 177, 177), fontSize: 10),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => SignUp()));
                    ;
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 10),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
