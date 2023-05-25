import 'package:flutter/material.dart';
import 'package:my_project/Onboarding_SignIn_SignUp/signin.dart';

class ob extends StatelessWidget {
  const ob({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new onboarding());
  }
}

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background1.jpeg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
              margin: EdgeInsets.only(top: 500),
              width: double.infinity,
              height: 300,
              color: Color.fromRGBO(0, 0, 0, 0.7),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Welcome to Mova',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 20, bottom: 30),
                    child: PageView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Center(
                            child: Text(
                              'The best movie streaming app of the century to make your days great!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                      width: 320,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => signin()));
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 12),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(207, 49, 46, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
