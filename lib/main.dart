import 'package:desingflutter/screens/home_screen.dart';
import 'package:desingflutter/screens/screens.dart';
import 'package:desingflutter/screens/scroll_design_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollDesignScreen(),
        'home_screen': (_) => HomeScreen()

      }
    );
  }
}

class TempHomeScreen extends StatelessWidget{
  const TempHomeScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Field'),
            Text('Field')
          ]
      );
  }
}
