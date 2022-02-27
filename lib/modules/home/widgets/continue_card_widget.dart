import 'package:flutter/material.dart';

class ContinueCard extends StatelessWidget {
  const ContinueCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Color.fromARGB(255, 240, 252, 240),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Modlue:',
              style: TextStyle(
                color: Color.fromARGB(255, 134, 134, 134),
              ),
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Text(
                    '01',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 2,
                    indent: 12,
                    endIndent: 5,
                    color: Color(0xff5da34e),
                  ),
                  Text(
                    'Stock Market Basics',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Level: '),
                    Text('Beginner'),
                  ],
                ),
                Row(
                  children: [
                    Text('Chapter: '),
                    Text('01'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              backgroundColor: Color.fromARGB(225, 211, 235, 210),
              valueColor: AlwaysStoppedAnimation<Color>(
                Color(0xff5da34e),
              ),
              value: .5,
            ),
          ],
        ),
      ),
    );
  }
}
