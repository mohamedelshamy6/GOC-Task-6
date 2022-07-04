import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          customCard2(),
          customCard2(),
          customCard2(),
          customCard2(),
          customCard2(),
        ],
      ),
    );
  }

  customCard2() {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/hotel2.jpg',
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Best Hotel Choice',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                '''Lorem Ipsum is simply dummy text of the
      ....................
      ....................
      ....................
                      ''',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
