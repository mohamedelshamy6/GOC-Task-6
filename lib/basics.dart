import 'package:flutter/material.dart';
import 'card2.dart';
import 'card1.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class Basics extends StatelessWidget {
  const Basics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage(
                        'images/ca.jpg',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find what you want',
                      hintStyle:
                          const TextStyle(fontSize: 15, color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.purple,
                        size: 25,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Recent Searches',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 20),
                const Card1(),
                const SizedBox(height: 50),
                const Text(
                  'Recommended From Trevatel',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 10),
                const Card2(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        borderRadius: 0,
        marginR: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        onTap: (_) {},
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey[700],
        items: [
          DotNavigationBarItem(icon: const Icon(Icons.home)),
          DotNavigationBarItem(icon: const Icon(Icons.message)),
          DotNavigationBarItem(icon: const Icon(Icons.circle)),
          DotNavigationBarItem(icon: const Icon(Icons.heart_broken)),
          DotNavigationBarItem(icon: const Icon(Icons.person)),
        ],
      ),
    );
  }
}
