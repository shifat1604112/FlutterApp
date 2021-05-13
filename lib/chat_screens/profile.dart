import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  final String name;
  Profile({this.name});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: 'Sacramento',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                Text(
                  'dummyText',
                  style: TextStyle(
                      fontFamily: 'Kaushan Script',
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade200,
                      letterSpacing: 2.5
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+880 123456789',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Kaushan Script',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Dummy@email.com',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                            fontFamily: 'Kaushan Script'),
                      ),
                    ))
              ],
            ),
          )
      ),
    );
  }
}
