import 'package:flutter/material.dart';
import 'package:flutter_app/CustomAppBar.dart';
import 'package:flutter_app/CustomBottomBar.dart';
import 'package:flutter_app/DiscountTile.dart';
import 'package:flutter_app/ShowCase.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));
int _currentIndex = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        beginColor: Colors.indigo[800],
        endColor: Colors.deepPurple[500],
      ),
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: _currentIndex,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              //Hardcoding without Functionality

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CategoryIcon("Men", Icon(Icons.store)),
                  CategoryIcon("Women", Icon(Icons.local_grocery_store)),
                  CategoryIcon("Devices", Icon(Icons.lightbulb_outline)),
                  CategoryIcon("Gadgets", Icon(Icons.headset)),
                  CategoryIcon("Gaming", Icon(Icons.videogame_asset)),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              //Guidance Icons to differentiate the offers meant for website, delivery or shop
              ShowCaseIcons(),
              SizedBox(height: 40),
              /*Actual Display of Offers/Coupons topLeft : ShopName, topRight : Guidance Icons, bottom : Description,Expiry Date and Favs/Share Icons
              Everything Defined Inside the DiscountTile kept as Positioned widget on a Container with the help of Stack Widget.
              */
              DiscountTile(
                shopName: "ANK Wear",
                shopCategory: "Fashion",
              ),
              SizedBox(
                height: 18,
              ),
              DiscountTile(
                imgurl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRdFaX1IqvOfxxSLtjQ5xdcnjKhGexbAkMYPw&usqp=CAU",
                shopName: "Hot Dog",
                shopCategory: "Food",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CategoryIcon(String title, Icon icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 12,
        ),
        Text(title),
      ],
    );
  }
}
