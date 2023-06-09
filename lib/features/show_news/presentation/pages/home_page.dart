import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';
import 'package:news_app/features/show_news/presentation/pages/components/news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        title: const Text(
          'News',
          style: TextStyle(
              color: Palette.deepBlue,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              cursorColor: Palette.deepBlue,
              style: TextStyle(color: Palette.deepBlue, fontSize: 14.0),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Palette.lightGrey,
                  size: 20,
                ),
                hintText: '뉴스를 검색해주세요.',
                hintStyle: TextStyle(color: Palette.lightGrey, fontSize: 14),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Palette.lightGrey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Palette.deepBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Top News',
              style: TextStyle(
                color: Palette.deepBlue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const NewsCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
