import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scuba_diving_app/google_maps/map_page.dart';
import 'package:scuba_diving_app/google_maps_final/1.dart';
import 'package:scuba_diving_app/searchpage.dart';
import 'package:scuba_diving_app/splash.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff5ac18e),
        title: Text('Route Planning App'),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Stack(
          children: [
            Column(
              children: [
                buildImageCard1(),
                buildImageCard2(),
                buildImageCard3(),
              ],
            ),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Color(0xff5ac18e),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Color(0xff5ac18e),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              backgroundColor: Color(0xff5ac18e),
              label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Color(0xff5ac18e),
              label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            }
            if (_currentIndex == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MapScreen()));
            }
          });
        },
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xff5ac18e),
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightGreen,
                    ),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Places',
                  style: TextStyle(fontSize: 20),
                ),
                //  onTap: () {
                // Navigator.of(context).push(
                //      MaterialPageRoute(builder: (context) => FirstPage()));
                //  },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'My trips',
                  style: TextStyle(fontSize: 20),
                ),
                //  onTap: () {
                // Navigator.of(context).push(
                //      MaterialPageRoute(builder: (context) => FirstPage()));
                //  },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 20),
                ),
                //  onTap: () {
                // Navigator.of(context).push(
                //      MaterialPageRoute(builder: (context) => FirstPage()));
                //  },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                //  onTap: () {
                // Navigator.of(context).push(
                //      MaterialPageRoute(builder: (context) => FirstPage()));
                //  },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Support',
                  style: TextStyle(fontSize: 20),
                ),
                //  onTap: () {
                // Navigator.of(context).push(
                //      MaterialPageRoute(builder: (context) => FirstPage()));
                //  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildImageCard1() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
              'https://th.bing.com/th/id/R.721581db1486c85861b08e86b6e5c81f?rik=2%2fNe6MwP8dn7%2fg&riu=http%3a%2f%2fblog.hotelguru.ro%2fwp-content%2fuploads%2f2016%2f08%2fApuseni-Mike-Pellinni.jpg&ehk=ZhjOOFWFIbW6aD5DiU9npJ1twTHxinh64oL85zEe8Ic%3d&risl=&pid=ImgRaw&r=0'),
          child: InkWell(
            onTap: () {},
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          'Visit natural parks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        )
      ],
    ));

Widget buildImageCard2() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
              'https://stefaniavanlieshout.com/wp-content/uploads/2018/09/Explore-Dobrogea-Day-1-23-1.jpg'),
          child: InkWell(
            onTap: () {},
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          'Find the cheapest ways',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        )
      ],
    ));

Widget buildImageCard3() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
              'https://th.bing.com/th/id/OIP.61V-byIp_fvrJkruQ8RXzQHaFj?pid=ImgDet&rs=1'),
          child: InkWell(
            onTap: () {},
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          'Visit natural parks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        )
      ],
    ));
