import 'dart:convert';
import 'photos_model.dart';
import 'package:flutter/material.dart';
import 'package:multi_app/weatherMain.dart';
import 'chatMain.dart';
import 'bmiMain.dart';
import 'titlebar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;


class Screen0 extends StatefulWidget {

  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {

  final NavigatoKey = GlobalKey<NavigatorState>();

  List<PhotosModel> photos = new List();

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  getCuratedPhoto() async{

    var response = await http.get(Uri.parse("https://api.pexels.com/v1/curated?per_page=15"),
        headers: {
          "Authorization" : "563492ad6f91700001000001ba023bacdda9481080be7e3411b1c4a0"
        });
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      PhotosModel photosModel = new PhotosModel();
      photosModel = PhotosModel.fromMap(element);
      photos.add(photosModel);
    });

    setState(() {});

  }

  @override
  void initState(){
    getCuratedPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey : NavigatoKey,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: NAME(),
          elevation: 0.0,
          actions : <Widget>[
            Theme(data: Theme.of(context).copyWith(
              ///
            ),
              child: PopupMenuButton(
                  color: Colors.blueGrey,
                  itemBuilder: (context) =>[
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.calculate_outlined,color: Colors.black,),
                          SizedBox(width: 6,),
                          Text('BMI calculator',),
                        ],
                      ),
                    ),
                    //PopupMenuDivider(height: 2.0),
                    PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit,color: Colors.black,),
                          SizedBox(width: 6,),
                          Text('Weather'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.chat,color: Colors.black,),
                          SizedBox(width: 6,),
                          Text('Chat'),
                        ],
                      ),
                    ),
                  ],
                  onSelected:(int menu){
                    if(menu==1){
                      NavigatoKey.currentState.push(MaterialPageRoute(
                          builder: (context) => BmiMain()),
                      );
                    }else if(menu==2){
                      NavigatoKey.currentState.push(MaterialPageRoute(
                          builder: (context) => WeatherMain()),
                      );
                    }
                    else if(menu==3){
                      NavigatoKey.currentState.push(MaterialPageRoute(
                          builder: (context) => ChatAppMain()),
                      );
                    }
                  }
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff5f8fd),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: TextField(
                            //controller: searchController,
                            decoration: InputDecoration(
                                hintText: "search ...",
                                border: InputBorder.none),
                          )),
                      InkWell(
                          onTap: () {
                            /*if (searchController.text != "") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SearchView(
                                        search: searchController.text,
                                      )));
                            }*/
                          },
                          child: Container(child: Icon(Icons.search)))
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Shifat ",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontFamily: 'Overpass'),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL("https://github.com/shifat1604112");
                      },
                      child: Container(
                          child: Text(
                            "Solaiman",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontFamily: 'Overpass'),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                wallPaper(photos, context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





