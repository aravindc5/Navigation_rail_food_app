import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final images = [
      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1b8.png',
      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1ba.png',
      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1bc.png',
      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1bb.png',
      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1bf.png'
    ];
    final burgerName = [
      'Cliparts Ice Cream',
      'Magnum Chocolate Ice Cream',
      'Classic Chicken Burger',
      'Ice Cream Berries',
      'Strawberry Horn Ice Cream'
    ];
    return Container(
        color: Color.fromRGBO(185, 252, 212, 0.5),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: ListView.builder(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.fromLTRB(0, 0, 24, 24),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(images[index]),
                    ),
                    Text(
                      burgerName[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            }));
  }
}
