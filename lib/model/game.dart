class Game{
  late String bgImage;
  late String icon;
  late String name;
  late String type;
  late num score;
  late num dowload;
  late num review;
  late String description;

  late List<String> images;

  Game(
      this.bgImage,
      this.icon,
      this.name,
      this.type,
      this.score,
      this.dowload ,
      this.review,
      this.description,
      this.images
      );
  static List <Game> games() {
    return [
      Game(
        'assets/images/ori1.jpg',
        'assets/images/ori_logo.png',
        'Ori and The Forest',
        'Adventure',
        4.8,
        382,
        324,
        "Ori is stanger to peril, but when a flight puts the owlet ku in hare way. Ori is stanger to peril, but when a flight puts the owlet ku in hare way",
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg'
        ],
      ),
      Game(
          'assets/images/rl1.jpg',
          'assets/images/rl_logo.png',
          'Rayman Legends',
          'Adventure',
          4.7,
          226,
          148,
          "Rayman is stanger to peril, but when a flight puts the owlet ku in hare way. Ori is stanger to peril, but when a flight puts the owlet ku in hare way",
          [
            'assets/images/rl2.jpg',
            'assets/images/rl3.jpg',
            'assets/images/rl4.jpg'
          ],
      ),
      Game(
        'assets/images/legend1.jpg',
        'assets/images/legend_logo.jpg',
        'My favory game',
        'Legend_Afiss',
        4.9,
        482,
        344,
        "Legend_Afiss is stanger to peril, but when a flight puts the owlet ku in hare way. Ori is stanger to peril, but when a flight puts the owlet ku in hare way",
        [
          'assets/images/legend2.jpg',
          'assets/images/legend3.jpg',
          'assets/images/legend4.jpg'
        ],
      ),
    ];
  }
}