import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SavedBlogsCard extends StatelessWidget {
  const SavedBlogsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff6c63ff),
          width: 0.4,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  'assets/book.svg',
                  placeholderBuilder: (BuildContext context) => Container(
                    child: const CircularProgressIndicator(),
                  ),
                  fit: BoxFit.scaleDown,
                  height: 100,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saved Blogs',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Find your saved blogs here.',
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
