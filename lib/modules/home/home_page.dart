import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/continue_card_widget.dart';

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
                    const ContinueCard(),
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: SvgPicture.asset(
                                'assets/welcome.svg',
                                placeholderBuilder: (BuildContext context) =>
                                    Container(
                                  child: const CircularProgressIndicator(),
                                ),
                                fit: BoxFit.scaleDown,
                                height: 140,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Quick Quiz',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Take a quick quiz to know how much you understand Crypto concepts',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
