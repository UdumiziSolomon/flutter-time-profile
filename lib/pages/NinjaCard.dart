import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NinjaCard());
  }
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  void changeStateHandler() {
    setState(() {
      ninjaLevel++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontFamily: 'Jose'),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        elevation: 5.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeStateHandler();
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('assets/pic.png'),
              radius: 50,
            )),
            const Divider(
              height: 60,
              color: Color.fromARGB(255, 71, 71, 71),
            ),
            const Text('NAME',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontSize: 17,
                    fontFamily: 'Jose')),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Solonode',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 254, 254),
                  letterSpacing: 2,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jose'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('AGE',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontSize: 17,
                    fontFamily: 'Jose')),
            const SizedBox(
              height: 5,
            ),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 254, 254),
                  letterSpacing: 2,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jose'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'solomonudumizi@gmail.com',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Jose', fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
