import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_example/view/desktop/landing_view_desktop.dart';
import 'package:web_example/view/mobile/landing_view_mobile.dart';

class LandingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: LandingViewMobilePortrait(),
      desktop: LandingViewDesktop(),
    );
  }
}