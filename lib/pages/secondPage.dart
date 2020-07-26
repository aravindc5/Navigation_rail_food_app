import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final images = [
      'http://assets.stickpng.com/thumbs/585abfc54f6ae202fedf2935.png',
      'http://assets.stickpng.com/thumbs/585ac04a4f6ae202fedf2938.png',
      'http://assets.stickpng.com/thumbs/585ac06b4f6ae202fedf293b.png',
      'http://assets.stickpng.com/thumbs/585ac0bb4f6ae202fedf293d.png',
      'http://assets.stickpng.com/thumbs/585ac0744f6ae202fedf293c.png'
    ];
    final burgerName = [
      'French Fries',
      'French Fries Footer',
      'McDonald Fries',
      'Dairy Queen Fries',
      'Burger King Fries'
    ];
    return Container(
        color: Color.fromRGBO(252, 185, 185, 0.5),
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
