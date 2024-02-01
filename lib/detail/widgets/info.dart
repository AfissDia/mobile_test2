import 'package:app_test2/detail/widgets/header.dart';
import 'package:app_test2/detail/widgets/review.dart';
import 'package:flutter/material.dart';
import '../../model/game.dart';
import 'description.dart';
import 'gallery.dart';

class GameInfo extends StatelessWidget {
  final Game game;

  const GameInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderSection(game),
          GallerySection(game),
          DescriptionSection(game),
          ReviewSection(game)
        ],
      ),
    );
  }
}
