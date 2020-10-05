import 'package:flutter/material.dart';
import 'package:web_example/resource/colors_resources.dart';
import 'package:web_example/resource/string_resources.dart';

class Navbar {
  static isMobile(){
    return AppBar(
      actionsIconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(StringResource.logoName, style: TextStyle(color: ColorsResources.logo_color, fontWeight: FontWeight.w800),),
    );
  }

  static isDesktop(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(StringResource.logoName, style: TextStyle(color: ColorsResources.logo_color, fontWeight: FontWeight.w800),),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Row(
            children: [
              FlatButton(
                child: Text(StringResource.homeMenu),
                onPressed: (){},
              ),
              FlatButton(
                child: Text(StringResource.aboutUsMenu),
                onPressed: (){},
              ),
              SizedBox(width: 24,),
              FlatButton(
                child: Text(StringResource.signin),
                onPressed: (){},
              ),
              RaisedButton(
                elevation: 0.0,
                hoverElevation: 0.0,
                color: Colors.white,
                textColor: ColorsResources.primary_color,
                child: Text(StringResource.signup),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: ColorsResources.primary_color)),
                onPressed: (){},
              ),
            ],
          ),
        )
      ],
    );
  }
}