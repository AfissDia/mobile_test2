import 'package:app_test2/detail/detail.dart';
import 'package:flutter/material.dart';

import '../../model/game.dart';

class PopularGame extends StatelessWidget {
  //PopularGame({super.key});
  PopularGame({Key? key}) : super(key: key);
  
  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      //color: Colors.amber,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: (() => Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => DetailGame(games[index])),
            ))),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: games[index].name,
                    child: Image.asset(games[index].bgImage),
                  ),
                ),
              )
            ),
          )), 
          separatorBuilder: ((context, index) => const SizedBox(width: 10,)), 
          itemCount: games.length,
      ),
    );
  }
}
