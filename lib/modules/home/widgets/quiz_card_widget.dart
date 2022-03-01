import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: SvgPicture.asset(
                'assets/road.svg',
                placeholderBuilder: (BuildContext context) => Container(
                  child: const CircularProgressIndicator(),
                ),
                fit: BoxFit.scaleDown,
                height: 140,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
