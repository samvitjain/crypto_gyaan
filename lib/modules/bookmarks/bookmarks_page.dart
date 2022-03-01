import 'package:crypto_gyaan/modules/common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/saved_blogs_widget.dart';

class BookmarksPage extends StatelessWidget {
  BookmarksPage({
    Key? key,
  }) : super(key: key);

  var tags = <String>['Ether', 'Bitcoin', 'Chia', 'BitTorrent'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: const Text(
            'Bookmarks',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SavedBlogsCard(),
            ),
            TitleWidget(title: 'Read by tags'),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tags.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Icon(Icons.tag),
                  title: Text(
                    tags[i],
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: 'New tag',
        elevation: 1,
        onPressed: () {},
        child: Icon(
          Icons.tag,
          color: Color(
            (0xff6c63ff),
          ),
        ),
      ),
    );
  }
}
