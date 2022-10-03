import 'package:eizie/features/activity/controller/provider.dart';
import 'package:eizie/features/activity/view/sub_category/swimmig_activity.dart';
import 'package:flutter/material.dart';

import 'features/activity/view/activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eizie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ActivityScreen(),
    );
  }
}
