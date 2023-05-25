import 'package:flutter/material.dart';
import 'package:my_project/Home_ActionMenu/homepage.dart';

class Film1 extends StatefulWidget {
  final String name;
  final String point;
  const Film1(this.name, this.point);

  @override
  State<Film1> createState() => _Film1State();
}

class _Film1State extends State<Film1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 155,
        height: 230,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${widget.name}'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              width: 30,
              height: 13,
              child: Text(
                '${widget.point}',
                style: TextStyle(color: Colors.white, fontSize: 8),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: Colors.red),
            )
          ],
        ));
  }
}

class see_all_1 extends StatelessWidget {
  const see_all_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: See_All_1());
  }
}

class See_All_1 extends StatelessWidget {
  const See_All_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, bottom: 10, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => home()));
                      },
                      icon: Icon(Icons.arrow_back)),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Top 10 Movies This Week',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  flex: 8,
                ),
                Expanded(
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  flex: 1,
                )
              ],
            ),
            Container(
              height: 630,
              child: ListView(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Film1('assets/images/Top10_1/Avengers.png', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film1('assets/images/Top10_1/Dora.png', '9.8'),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Film1('assets/images/Top10_1/SanAndreas.png', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film1('assets/images/Top10_1/Midsommar.png', '9.8'),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Film1('assets/images/Top10_1/Freedom.jpeg', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film1('assets/images/Top10_2/Bliss.png', '9.8'),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Film1('assets/images/Top10_2/Frankenstein.png', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film1('assets/images/Top10_2/Joker.png', '9.8'),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Film1('assets/images/Top10_2/Talvar.png', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film1('assets/images/Top10_2/Thriller.png', '9.8'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
