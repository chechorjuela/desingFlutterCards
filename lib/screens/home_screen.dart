import 'package:flutter/material.dart';

import '../widgets/background_home.dart';
import '../widgets/card_table.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundHome(),
          HomeBody()
        ]
      ),
      bottomNavigationBar: CustomBottomNavigation()
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable()
        ]
      )
    );
  }
}