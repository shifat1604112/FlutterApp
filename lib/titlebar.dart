import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'photos_model.dart';
import 'full_screen_photo.dart';

Widget wallPaper(List<PhotosModel> listPhotos, BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
        crossAxisCount: 2, ///ekta row te koita data dekhabo,karon gridview er cross axis row
        childAspectRatio: 0.6, /// data jeta dekhacchi sheta ektu lombate dekhaite chai,wideish krte chaile 1.6 or something use korte pari
        physics: ClampingScrollPhysics(), ///smothness
        shrinkWrap: true, ///gridview ba listview erokom scrollable widget thakle eta use krte hbe
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        children: listPhotos.map((PhotosModel photoModel) {
          return GridTile(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageView(
                            imgPath: photoModel.src.portrait,
                            photographar : photoModel.photographer,
                          )));
                },
                child: Hero(
                  tag: photoModel.src.portrait,
                  child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(photoModel.src.portrait, height: 50, width: 100, fit: BoxFit.cover,)
                    ),
                  ),
                ),
              ));
        }).toList()),
  );
}


Widget NAME() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Lorem",
        style: TextStyle(color: Colors.black87, fontFamily: 'Overpass'),
      ),
      Text(
        "Ipsum",
        style: TextStyle(color: Colors.blue, fontFamily: 'Overpass'),
      )
    ],
  );
}
