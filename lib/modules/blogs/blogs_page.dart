import 'package:crypto_gyaan/modules/common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/constants.dart';

class BlogsPage extends StatelessWidget {
  BlogsPage({
    Key? key,
  }) : super(key: key);
  var blogs = [
    'The Russo-Ukrainian War is an ongoing war primarily involving Russia, Belarus, and pro-Russian forces on one side, and Ukraine on the other. Armed conflict began in February 2014 in the wake of Euromaidan, centred on the status of Crimea and parts of the Donbas, which are internationally recognised as part of Ukraine',
    'xyz',
    'The Russo-Ukrainian War is an ongoing war primarily involving Russia, Belarus, and pro-Russian forces on one side, and Ukraine on the other. Armed conflict began in February 2014 in the wake of Euromaidan, centred on the status of Crimea and parts of the Donbas, which are internationally recognised as part of Ukraine',
    'xyz',
    'The Russo-Ukrainian War is an ongoing war primarily involving Russia, Belarus, and pro-Russian forces on one side, and Ukraine on the other. Armed conflict began in February 2014 in the wake of Euromaidan, centred on the status of Crimea and parts of the Donbas, which are internationally recognised as part of Ukraine',
    'xyz'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: const Text(
            'Blogs',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: blogs.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    bottom: 16.0,
                  ),
                  child: Card(
                    color: Color(cardColorsLight[i % 6]),
                    elevation: 2,
                    child: SizedBox(
                      height: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Russia Ukaraine crisis',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '28/02/2022',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  blogs[i],
                                  style: GoogleFonts.quicksand(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  // overflow: TextOverflow.,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            CreatorTag(),
          ],
        ),
      ),
    );
  }
}
