import 'package:app_test2/home/widgets/category.dart';
import 'package:app_test2/home/widgets/header.dart';
import 'package:app_test2/home/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF36D013),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: Offset(150,50),
                child:Image.asset(
                    'assets/images/bg_liquid.png', width: 200,
                ),
            ),
            Positioned(
                right: 0,
                top: 210,
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(20),
                  origin: Offset(180,100),
                  child:Image.asset(
                    'assets/images/bg_liquid.png', width: 200,
                  ),
                ),
            ),
          Column(
              children: [
                const HeaderSection(),
                const SearchSection(),
                CategorySection(),
              ],
            )
          ],
        )
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  //********************************Ajout des bottons navigatin Bar
  Widget NavigationBar(){
    return Container(
      color: Color(0xfff6f8ff),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Color(0xFF36D013),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items:[
              BottomNavigationBarItem(
                label: 'Home',
                icon: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  const Icon(
                    Icons.home_rounded,
                    size: 30,
                    color: Colors.green,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Application',
                icon: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  const Icon(
                    Icons.play_arrow_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Film',
                icon: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  const Icon(
                      Icons.play_arrow_rounded,
                      size: 30,
                      color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Book',
                icon: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  const Icon(
                    Icons.auto_stories_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
