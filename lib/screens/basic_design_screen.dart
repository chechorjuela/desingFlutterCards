import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/background.jpeg')),
        Title(),
        ButtonSection(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Text('lorem ipsum dolor sit amet, consectetur adipiscing elit')
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: const [
              Text(
                'Title',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
                textDirection: TextDirection.rtl,
              ),
              Text('Title', style: TextStyle(color: Colors.black45)),
            ]),
            Expanded(child: Container()),
            Icon(Icons.star, color: Colors.red),
            const Text('41')
          ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton( icon: Icons.call, text: 'Call'),
            CustomButton( icon: Icons.map_sharp, text: 'Map'),
            CustomButton( icon: Icons.share, text: 'share')
          ]),
    );
  }
}


class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(children: [
      Icon( this.icon, color: Colors.blue),
      Text(this.text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
    ]);
  }
}