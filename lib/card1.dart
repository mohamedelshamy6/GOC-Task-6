import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          customCard1(),
          customCard1(),
          customCard1(),
          customCard1(),
          customCard1(),
        ],
      ),
    );
  }

  customCard1() {
    return SizedBox(
      width: 150,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Image.asset('images/hotel_room.jpg'),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cosy Hotel De...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        ' \$ 250',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '/Night',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '5.0',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
