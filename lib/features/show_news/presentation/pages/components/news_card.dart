import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16.0,
      ),
      width: MediaQuery.of(context).size.width - (2 * 16),
      height: 300,
      child: Stack(
        children: [
          Container(
            height: 260,
            color: Palette.lightGrey,
            child: Image.network(
              'https://images.velog.io/images/jojo_devstory/post/1b2fa208-846b-4cc8-b109-72c30382cead/flutter-logo-sharing.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width - (2 * 32),
              decoration: const BoxDecoration(
                color: Palette.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 4,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    'News Title',
                    maxLines: 2,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Palette.deepBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
