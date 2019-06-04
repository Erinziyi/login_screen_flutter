import 'package:flutter/material.dart';
import 'package:flutter_login_app/Dashboard/dashboard_page.dart';
import 'package:flutter_login_app/login_page.dart';
import 'ActionPlan/action_plan_list.dart';
import 'Course/course_list.dart';
import 'Discussion/discussion_topic_list.dart';
import 'Notificaition/notification_view.dart';
import 'Report/report.dart';
import 'Training/training_session.dart';
import 'Training/training_session_checkout.dart';
import 'action_plan_detail.dart';
import 'package:responsive_text_field/responsive_text_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    DashboardPage.tag: (context) => DashboardPage(),
    CourseListPage.tag: (context) => CourseListPage(),
    TrainingSessionPage.tag: (context) => TrainingSessionPage(),
    DiscussionTopicListPage.tag: (context) => DiscussionTopicListPage(),
    NotificationPage.tag: (context) => NotificationPage(),
    ActionPlanPage.tag: (context) => ActionPlanPage(),
    ReportPage.tag: (context) =>ReportPage(),
    TrainingSessionCheckoutPage.tag: (context) => TrainingSessionCheckoutPage(),
    ActionPlanDetailPage.tag: (context) =>ActionPlanDetailPage(),

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PEOPLEaps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Roboto',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

