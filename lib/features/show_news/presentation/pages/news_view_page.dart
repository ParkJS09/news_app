import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';

class NewsViewPage extends StatelessWidget {
  const NewsViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String article =
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere, sem ac luctus ullamcorper, dolor dui sagittis magna, at laoreet libero enim in quam. Nam nibh nisl, malesuada at commodo sit amet, aliquam in purus. Vestibulum nec dolor efficitur, vestibulum arcu in, sollicitudin ante. Fusce erat est, interdum id dolor et, rutrum tristique ipsum. Duis id vestibulum sapien, dignissim gravida leo. Proin sit amet purus viverra, sodales libero nec, malesuada orci. Mauris non scelerisque massa, at maximus nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget porta nisi, et efficitur turpis. Curabitur maximus ex non magna dignissim, vel dictum purus viverra. Vivamus non venenatis eros. Sed interdum diam non ultrices condimentum. In commodo odio malesuada commodo suscipit. Maecenas venenatis eros dui, eget auctor mi malesuada eget. Duis eget erat vitae eros suscipit malesuada et in nisl. Phasellus viverra ac felis in sagittis.
  Quisque consectetur erat at tortor porttitor efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin non mi lorem. Suspendisse pharetra quam lectus. Etiam elementum rhoncus consequat. Aliquam erat volutpat. Phasellus a consequat purus. Pellentesque vel justo turpis. Vestibulum at turpis dictum, dignissim leo ac, lobortis ipsum. Suspendisse in risus eu leo molestie semper at non eros. Phasellus varius lacus nibh, eu vehicula justo dapibus ut. Vivamus suscipit enim sit amet facilisis facilisis. Donec porta justo augue, vitae ornare felis egestas non. Sed sed dapibus libero, ac bibendum augue.
  Pellentesque nunc felis, porta vitae luctus id, rhoncus sed turpis. Maecenas condimentum lectus et aliquet volutpat. Donec sit amet sem a tellus facilisis scelerisque a eget orci. Nullam nibh arcu, sodales eu sapien fermentum, faucibus pellentesque lectus. Fusce interdum imperdiet nulla vitae volutpat. Pellentesque finibus blandit lectus, nec rhoncus nunc porta at. Ut bibendum vitae risus eu feugiat. Morbi et sapien ultricies, tempus enim ut, vulputate nulla. Mauris eros ex, interdum ut ex ac, porttitor finibus est.
  Fusce nibh arcu, eleifend imperdiet ipsum ut, feugiat finibus tellus. Curabitur faucibus ut velit nec mollis. Sed et eros lacus. Nulla imperdiet finibus dolor. Vestibulum dictum nulla nulla, id luctus lectus accumsan in. Fusce porttitor mi at dictum dapibus. Aenean sollicitudin libero et porttitor posuere.
  Pellentesque ornare tristique finibus. Nulla facilisi. In varius ornare massa, sit amet auctor enim venenatis at. In posuere, sapien egestas volutpat convallis, eros lectus tincidunt tellus, at viverra sem sapien sed tortor. Ut nec leo id nunc mollis imperdiet sit amet sed mauris. Mauris euismod leo id sapien faucibus, eget aliquam mi accumsan. Proin rutrum scelerisque pulvinar. Donec non venenatis eros. Nunc eu elit blandit, accumsan mauris et, finibus lacus. Duis ut metus quis elit fermentum facilisis. Cras facilisis purus in purus lacinia, et vulputate nisl vulputate. Etiam imperdiet faucibus enim hendrerit dictum.''';

    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'News Title',
                style: TextStyle(
                    color: Palette.deepBlue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                height: 300,
                color: Palette.lightGrey,
                child: Image.network(
                  'http://file.osen.co.kr/article/2023/04/26/202304260754773250_64485a4f04af5.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'date',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Author',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                article,
                style: const TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
