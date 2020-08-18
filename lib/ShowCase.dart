import 'package:flutter/material.dart';

class ShowCaseIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("All",style: TextStyle(color: Colors.teal,fontSize: 14,fontWeight: FontWeight.w500),),
        showIcon(Icons.local_grocery_store, "In Store"),
        showIcon(Icons.directions_bike, "For Delivery"),
        showIcon(Icons.network_check, "On Website"),
      ],
    );
  }
  Widget showIcon(IconData iconData, String title) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(iconData,color: Colors.teal[500],size: 30,),
        Text(title)
      ],
    );
  }
}
