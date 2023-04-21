import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF30BAD6),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2,0.2],
              colors: [
                Color(0xff5EE8C5),
                Color(0xff30BAD6)
              ]
            )
          ),
          child: PageView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children:[
              PageMain(),
              PageContent()
            ]
          ),
        )
    );
  }
}
class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      MainContent()
    ]);
  }
}
class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}
class MainContent extends StatelessWidget {
  String dayName = DateFormat('EEEE').format(DateTime.now());

  final textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
  @override
  Widget build(BuildContext context){
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:30),
          Text('11º', style: textStyle),
          Text('$dayName', style: textStyle),
          Expanded(child: Container(

          )),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ]
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
              backgroundColor: Color(0xFF0098FA),
              shape: StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenidos', style: TextStyle(color: Colors.white, fontSize:30))
          )
        )
      )
    );
  }
}
