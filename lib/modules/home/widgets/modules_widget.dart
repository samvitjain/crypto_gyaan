import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModulesWidget extends StatelessWidget {
  const ModulesWidget({
    Key? key,
    required this.cardColors,
    required this.topics,
  }) : super(key: key);

  final List<int> cardColors;
  final List<String> topics;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 10,
            bottom: 10,
          ),
          child: Text(
            'Lessons',
            style: GoogleFonts.quicksand(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
              color: Colors.blueGrey,
            ),
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                color: Color(cardColors[index]),
                elevation: 6,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            topics[index],
                            style: GoogleFonts.quicksand(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
