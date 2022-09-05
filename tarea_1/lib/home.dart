import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MC Flutter'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 141,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  Icon(Icons.account_circle_rounded, size: 50),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Flutter McFlutter',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text('Experienced App Developer'),
                ],
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text('123 Main Street'),
              const Text('(415)-555-0198'),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        b1 = !b1;
                        b2 = false;
                        b3 = false;
                        b4 = false;
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text('Únete a un club con otras personas'),
                          ),
                        );
                    },
                    icon: Icon(Icons.accessibility,
                        color: b1 ? Colors.indigo : Colors.black)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        b1 = false;
                        b2 = !b2;
                        b3 = false;
                        b4 = false;
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Cuenta regresiva para el evento: 31 días'),
                          ),
                        );
                    },
                    icon: Icon(Icons.timer,
                        color: b2 ? Colors.indigo : Colors.black)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        b1 = false;
                        b2 = false;
                        b3 = !b3;
                        b4 = false;
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text('Llama al número 4155550198'),
                          ),
                        );
                    },
                    icon: Icon(Icons.phone_android,
                        color: b3 ? Colors.indigo : Colors.black)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        b1 = false;
                        b2 = false;
                        b3 = false;
                        b4 = !b4;
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text('Llama al celular 3317865113'),
                          ),
                        );
                    },
                    icon: Icon(Icons.phone_iphone_rounded,
                        color: b4 ? Colors.indigo : Colors.black)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
