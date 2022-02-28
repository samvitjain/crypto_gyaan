import 'package:flutter/material.dart';

class StreakAndGoalWidget extends StatelessWidget {
  const StreakAndGoalWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.all_inclusive,
                      size: 16,
                      color: Color.fromARGB(255, 212, 68, 49),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Streak',
                    ),
                  ],
                ),
                Text(
                  '13',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'days',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
            const VerticalDivider(
              width: 20,
              thickness: 1,
              indent: 1,
              endIndent: 1,
              color: Color.fromARGB(255, 212, 68, 49),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.adjust,
                      size: 16,
                      color: Color.fromARGB(
                        255,
                        212,
                        68,
                        49,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Goal',
                    ),
                  ],
                ),
                Text(
                  '05',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'cards/day',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
