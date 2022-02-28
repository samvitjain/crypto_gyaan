import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/continue_card_widget.dart';
import 'widgets/quiz_card_widget.dart';
import 'widgets/streak_and_goal_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
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
                    ContinueCard(),
                    QuizCard(),
                    StreakAndGoalWidget(),
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
