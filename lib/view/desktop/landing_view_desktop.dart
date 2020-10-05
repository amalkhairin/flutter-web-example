import 'package:flutter/material.dart';
import 'package:web_example/resource/colors_resources.dart';
import 'package:web_example/resource/string_resources.dart';
import 'package:web_example/view/navbar.dart';

class LandingViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Navbar.isDesktop(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 64.0, left: 48.0, right: 48.0, bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(StringResource.header, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 64, fontWeight: FontWeight.w700),),
                    SizedBox(height: 48.0,),
                    Text(StringResource.paragraph, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 18),),
                    SizedBox(height: 12.0),
                    RaisedButton(
                      textColor: Colors.white,
                      color: ColorsResources.primary_color,
                      child: Text("Get Started", style: TextStyle(fontSize: 18.0),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                child: Image.asset("assets/pict.png", fit: BoxFit.fitWidth,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}