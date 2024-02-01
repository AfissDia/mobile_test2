import 'package:app_test2/detail/widgets/detail_sliver.dart';
import 'package:app_test2/detail/widgets/info.dart';
import 'package:app_test2/model/game.dart';
import 'package:flutter/material.dart';

class DetailGame extends StatelessWidget {
  const DetailGame(this.game, {super.key});

  final Game game;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: DetailSliverDelegate(
                game: game,
                expandedHeight: 360,
                roundedContainerHeight: 30
              ),
          ),
            SliverToBoxAdapter(
            child: GameInfo(game),
          ),
        ],
      ),
    );
  }
}
