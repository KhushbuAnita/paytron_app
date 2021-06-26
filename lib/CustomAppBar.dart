import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: Image.asset("assets/images/imgAppBar.png"),
    ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
    
}