import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;

    // set background
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDaytime']
        ? const Color.fromARGB(255, 47, 133, 198)
        : const Color.fromARGB(255, 32, 39, 91);

    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(23)),
                    onPressed: () async {
                      dynamic result =
                          await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'isDaytime': result['isDaytime'],
                          'flag': result['flag'],
                        };
                      });
                    },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.grey.shade300,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'Edit Location',
                        style: TextStyle(
                            fontFamily: 'Jose',
                            fontSize: 18,
                            color: Colors.grey.shade300),
                      ),
                    )),
                const SizedBox(
                  height: 70.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: const TextStyle(
                          fontFamily: 'Jose',
                          fontSize: 30,
                          letterSpacing: 2,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
                Text(
                  data['time'],
                  style: const TextStyle(
                      fontFamily: 'Jose',
                      fontSize: 65,
                      letterSpacing: 1,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    icon: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    label: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(
                        'Go to profile',
                        style: TextStyle(
                            fontFamily: 'Jose',
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ))
              ],
            ),
          ),
        )));
  }
}
