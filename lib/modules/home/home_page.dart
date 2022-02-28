import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/common_widgets.dart';
import '../common/constants.dart';
import 'widgets/continue_card_widget.dart';
import 'widgets/modules_widget.dart';
import 'widgets/quiz_card_widget.dart';
import 'widgets/streak_and_goal_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

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
                      cardColors: cardColorsDark,
                      topics: topics,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CreatorTag()
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
