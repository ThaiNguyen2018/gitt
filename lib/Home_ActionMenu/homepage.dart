import 'package:flutter/material.dart';
import 'package:my_project/Home_ActionMenu/see_all_1.dart';
import 'package:my_project/Home_ActionMenu/exp.dart';

class Film extends StatefulWidget {
  final String img;
  final String point;
  const Film(this.img, this.point);

  @override
  State<Film> createState() => _FilmState();
}

class _FilmState extends State<Film> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${widget.img}'),
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

class HomeIndex extends StatelessWidget {
  const HomeIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/DrStrangePoster.png'),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.rectangle,
          ),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/iconM.png',
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        width: 200,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Container(width: 15),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 170,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, bottom: 5),
                  width: double.infinity,
                  child: Text(
                    'Dr. Strange 2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, bottom: 5),
                  child: Text(
                    'Action, Superhero, Science Fiction,...',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        height: 25,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                            size: 13,
                          ),
                          label: Text(
                            'Play',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ))),
                        ),
                      ),
                      Container(
                        width: 15,
                      ),
                      SizedBox(
                        width: 90,
                        height: 25,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 13,
                          ),
                          label: Text(
                            'My List',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.amber.withOpacity(0)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 2)))),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
            height: 326,
            padding: EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(0),
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Top 10 Movies This Week',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 95,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => see_all_1()));
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 9,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Film('assets/images/Top10_1/Avengers.png', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/Dora.png', '9.6'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/Midsommar.png', '9.7'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/SanAndreas.png', '9.7'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/Freedom.jpeg', '9.6'),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'New Releases',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 200,
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 9,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Film('assets/images/Top10_2/Bliss.png', '9.7'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_2/Frankenstein.png', '9.6'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_2/Joker.png', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_2/Talvar.png', '9.7'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_2/Thriller.png', '9.6'),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Hot',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 275,
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 9,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Film('assets/images/Top10_1/Avengers.png', '9.8'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/Dora.png', '9.6'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/Midsommar.png', '9.7'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/SanAndreas.png', '9.7'),
                      Container(
                        width: 10,
                      ),
                      Film('assets/images/Top10_1/Freedom.jpeg', '9.6'),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeIndex(),
    Exp(),
    Text(
      'My List?',
    ),
    Text(
      'Download?',
    ),
    Text(
      'Profile?',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download,
            ),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
