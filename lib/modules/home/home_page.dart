import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/continue_card_widget.dart';
import 'widgets/quiz_card_widget.dart';

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
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '05',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.all_inclusive,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                'Streak',
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text('days')
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '13',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.adjust,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                'Goal',
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text('cards/day')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
