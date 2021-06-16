import 'package:flutter/material.dart';
import 'package:flutter_desktop_plant/providers/state_manager.dart';
import 'package:flutter_desktop_plant/utils/colors.dart';
import 'package:flutter_desktop_plant/widgets/f_header.dart';
import 'package:flutter_desktop_plant/widgets/w_details.dart';
import 'package:flutter_desktop_plant/widgets/w_filter.dart';
import 'package:flutter_desktop_plant/widgets/w_main.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StateManager>(
      create: (BuildContext context) => StateManager(),
      child: MaterialApp(
        title: 'Flutter Plants App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: mainColor,
          primarySwatch: Colors.green,
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
        ),
        home: PlantApp(),
      ),
    );
  }
}

class PlantApp extends StatefulWidget {
  @override
  _PlantAppState createState() => _PlantAppState();
}

class _PlantAppState extends State<PlantApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: Container(),
        preferredSize: Size.zero,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          fHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WFilter(),
              Expanded(child: WMain()),
              WDetails(),
            ],
          )
        ],
      ),
    );
  }
}
