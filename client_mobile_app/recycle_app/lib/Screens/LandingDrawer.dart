import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:recycle_app/Screens/EventsScreen.dart';
import 'package:recycle_app/Screens/ProfileScreen.dart';

class LandingDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 6.0,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xff9cc0dc),
                    blurRadius: 2.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  CircleAvatar(
                    maxRadius: 60.0,
                    backgroundImage: AssetImage(
                      'assets/img/woman.jpg',
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '+2519 13 65 4294',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'አብዲሳ ጸጋዬ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xFF6a5B95),
              ),
              title: Text(
                'መገለጫ',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6a5B95),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ProfileScreen.id);
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesome.calendar,
                color: Color(0xFF6a5B95),
              ),
              title: Text(
                'ክስተቶች',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6a5B95),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, EventsScreen.id);
              },
            ),
            Expanded(
              child: SizedBox(
                height: 10.0,
              ),
            ),
            Divider(
              color: Color(0xFF6a5B95),
              endIndent: 12.0,
              indent: 12.0,
            ),
            ListTile(
              leading: Icon(
                FontAwesome.question,
                color: Color(0xFF6a5B95),
              ),
              title: Text(
                'ስለ መተግበሪያው',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF6a5B95),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
