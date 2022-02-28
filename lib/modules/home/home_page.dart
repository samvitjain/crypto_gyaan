import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/continue_card_widget.dart';
import 'widgets/modules_widget.dart';
import 'widgets/quiz_card_widget.dart';
import 'widgets/streak_and_goal_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final cardColors = [
    0xfff48fb1,
    0xffff8a65,
    0xff4db6ac,
    0xff9fa8da,
    0xffce93d8,
    0xff90a4ae,
    0xfff48fb1,
    0xffff8a65,
    0xff4db6ac,
    0xff9fa8da,
    0xffce93d8,
    0xff90a4ae,
  ];

  final topics = [
    'BitCoin',
    'Crypto Currency',
    'NFT',
    'Blockchain',
    'Wallet',
    'Money',
    'Fiat Currency',
    'Digital Gold',
    'Investing',
    'Inflation'
  ];

  _randomColor() {
    var temp = cardColors..shuffle();
    return Color(temp[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: const Text(
            'Hello Mudrex!',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/welcome.svg',
                placeholderBuilder: (BuildContext context) => Container(
                  child: const CircularProgressIndicator(),
                ),
                fit: BoxFit.fitWidth,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const ContinueCard(),
                    const QuizCard(),
                    const StreakAndGoalWidget(),
                    ModulesWidget(
                      cardColors: cardColors,
                      topics: topics,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
