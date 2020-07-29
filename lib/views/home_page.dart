import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/callToAction/call_to_action.dart';
import 'package:flutter_web/widgets/centerView/center_view.dart';
import 'package:flutter_web/widgets/courseDetail/course_detail.dart';
import 'package:flutter_web/widgets/navigationBar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(children: <Widget>[
          NavigationBar(),
          Expanded(
            child: Row(children: [
              CourseDetails(),
              Expanded(
                child: Center(
                  child: CallToAction('Join Course'),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
