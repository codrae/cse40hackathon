import 'package:flutter/material.dart';

class userInfo extends StatefulWidget {
  const userInfo({super.key, required this.title});
  final String title;

  @override
  State<userInfo> createState() => _userInfo();
}

class _userInfo extends State<userInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          title: const Text(
            '사용자 정보',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black,
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
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 300, horizontal: 20),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
