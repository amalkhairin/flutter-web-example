import 'package:flutter/material.dart';
import 'package:web_example/resource/colors_resources.dart';
import 'package:web_example/view/custom_drawer.dart';
import 'package:web_example/resource/string_resources.dart';
import 'package:web_example/view/navbar.dart';

class LandingViewMobilePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Navbar.isMobile(),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 18.0, bottom: 10.0, right: 24.0, left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(StringResource.header, textAlign: TextAlign.center, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 36, fontWeight: FontWeight.w700),),
              SizedBox(height: 24.0,),
              Container(
                height: MediaQuery.of(context).size.width/2,
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                child: Image.asset("assets/pict.png", fit: BoxFit.fitHeight,)
              ),
              SizedBox(height: 24.0,),
              Text(StringResource.paragraph, textAlign: TextAlign.center, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 14),),
              SizedBox(height: 10.0),
              RaisedButton(
                textColor: Colors.white,
                color: ColorsResources.primary_color,
                child: Text("Get Started"),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}