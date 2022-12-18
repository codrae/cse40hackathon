import 'package:cse40hackathon/main.dart';
import 'package:flutter/material.dart';
import 'widgets/taskList.dart';
import 'userInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(
      title: 'home',
    ),
    const LoginDemo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'App Name',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.amber,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const userInfo(
                                  title: 'user Information',
                                )));
                  },
                ),
              )),
        ],
      ),

      // AppBar( Row(
      //   children:
      //             const Icon(
      //               Icons.ac_unit_rounded,
      //             ),
      //             const Text(
      //               'App Name',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.w300,
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(Icons.account_circle),
      //             )
      //           ),
      // ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 300, horizontal: 20),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.refresh,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const taskList(),
                      const taskList(),
                      const taskList(),
                      const taskList(),
                      const taskList(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.list), label: '의뢰 목록'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.check_box), label: '내가 맡은 의뢰'),
      //   ],
      // ),
    );
  }
}
