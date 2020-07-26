import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const images = [
      'http://assets.stickpng.com/thumbs/588248b2e81acb96424ffab0.png',
      'http://assets.stickpng.com/thumbs/5882488ae81acb96424ffaaf.png',
      'http://assets.stickpng.com/thumbs/58824b33e81acb96424ffab9.png',
      'http://assets.stickpng.com/thumbs/58824b29e81acb96424ffab8.png',
      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a8.png'
    ];
    const burgerName = [
      'Burger King Triple Whopper',
      'Burger King Whopper',
      'Classic Chicken Burger',
      'Fish Burger',
      'Food Big Burger'
    ];
    return Container(
        color: Color.fromRGBO(185, 204, 252, 0.5),
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
