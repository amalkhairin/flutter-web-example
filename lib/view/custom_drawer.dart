import 'package:flutter/material.dart';
import 'package:web_example/resource/colors_resources.dart';
import 'package:web_example/resource/string_resources.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text(StringResource.homeMenu),
              onTap: ()=> Navigator.pop(context),
            ),
            ListTile(
              title: Text(StringResource.aboutUsMenu),
              onTap: ()=> Navigator.pop(context),
            ),
            FlatButton(
              child: Text(StringResource.signin),
              onPressed: ()=> Navigator.pop(context),
            ),
            FlatButton(
              color: Colors.white,
              textColor: ColorsResources.primary_color,
              child: Text(StringResource.signup),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: BorderSide(color: ColorsResources.primary_color)),
              onPressed: ()=> Navigator.pop(context),
            ),
          ],
        ),
      );
  }
}