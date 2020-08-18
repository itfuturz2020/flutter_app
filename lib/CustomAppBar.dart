import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _prefHeight = 100;
  Color beginColor, endColor;
  CustomAppBar({this.beginColor,this.endColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _prefHeight,
      padding: EdgeInsets.only(top: 16,bottom: 4,left: 12,right: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [beginColor,endColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(),
              SizedBox(width: 12,),
              Text("My Profile",style: TextStyle(color: Colors.white),)
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.search,color: Colors.white,),
              SizedBox(width: 16,),
              Icon(Icons.notifications_none,color: Colors.white,)
            ],
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_prefHeight);

}