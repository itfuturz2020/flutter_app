import 'package:flutter/material.dart';

const List<String> stringData = ["Home", "Task", "Surveys", "Ads"];
const List<IconData> iconData = [
  Icons.home,
  Icons.work,
  Icons.event_note,
  Icons.all_inclusive
];

class CustomBottomBar extends StatelessWidget {
  //Changing Index Value
//  ValueSetter<int> onPressed;
  VoidCallback onPressed;
  int selectedIndex;
  List<String> stringTile;
  List<IconData> iconTile;
  //For the Sake of implementation am Hardcoding and Setting this as default Parameter
  CustomBottomBar(
      {this.stringTile: stringData,
      this.iconTile: iconData,
      this.onPressed,
      this.selectedIndex: 0})
      : assert(stringTile.length == iconTile.length);
  @override
  Widget build(BuildContext context) {
    //Outer Box in Bottom bar with Shadows
    return Container(
        height: 80,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: Colors.blueGrey,
                blurRadius: 5,
                spreadRadius: 2,
              ),
              BoxShadow(
                offset: Offset(1, 0),
                color: Colors.blueGrey,
                blurRadius: 5,
                spreadRadius: 2,
              )
            ],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            color: Colors.white),
        //BottomBar Items listed in ListView wrapped with GestureDetector for changing currently Active parameter
        child: ListView.separated(
          padding: EdgeInsets.all(12),
          itemBuilder: (context, int index) {
            return GestureDetector(
                onTap: onPressed,
                //Fetching Title, IconData and comparing selectedindex and Index of the element
                child: bottomTile(this.stringTile[index], this.iconTile[index],
                    this.selectedIndex == index));
          },
          itemCount: stringTile.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, _) => SizedBox(
            width: 48,
          ),
        ));
  }

  Widget bottomTile(String title, IconData iconData, bool isSelected) {
    //for Selected Index the Icon shows in white Color With teal Background
    return isSelected
        ? Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(44),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconData,
                  color: Colors.white,
                  size: 16,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                iconData,
                color: Colors.blueGrey,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.blueGrey),
              )
            ],
          );
  }
}
