import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 100,
     // color: Colors.amber,
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: Stack(
        children: [
          TextField(
            cursorColor: Color(0xFF5F67EA),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20
              ),
              prefixIcon: const Icon(
                Icons.search_rounded,
                size: 30,
              ),
              hintText: 'Search game',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
          ),
          Positioned(
            right: 12,
            bottom: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF36D013),
                ),
                child: const Icon(
                  Icons.mic_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
