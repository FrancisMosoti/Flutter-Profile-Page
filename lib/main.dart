import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(),
  ));
}

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  int level1 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: const Text(
          'Profile Page',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontFamily: 'IndieFlower',
          ),
        ),
        backgroundColor: Colors.amber[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level1++;
          });
        },
        backgroundColor: Colors.amber[900],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/frank.jpg'),
              radius: 100.0,
            ),
            const Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Francis',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        fontFamily: 'IndieFlower',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Current Level',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Pro Level $level1',
                      style: const TextStyle(
                        color: Colors.amberAccent,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        fontFamily: 'IndieFlower',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.mail),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('francismosoti20@gmail.com'),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.phone),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('+254712514102'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
