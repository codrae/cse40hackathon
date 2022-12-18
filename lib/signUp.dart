import 'package:cse40hackathon/main.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  String inputId = '';
  String inputPassword = '';
  String inputName = '';
  String inputLocal = '';
  String inputAge = '';

  bool isClient = true;

  List<dynamic> user = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("APP NAME"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      isClient = true;
                    },
                    child: const Text(
                      '의뢰인',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      isClient = false;
                      setState(() {});
                    },
                    child: const Text(
                      '알바생',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '이름',
                  hintText: '이름을 입력하세요',
                ),
                onChanged: (value) {
                  setState(() {
                    inputName = value;
                  });
                },
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '아이디',
                      hintText: '아이디를 입력하세요'),
                  onChanged: (value) {
                    setState(() {
                      inputId = value;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '비밀번호',
                      hintText: '비밀번호를 입력하세요'),
                  onChanged: (value) {
                    setState(() {
                      inputPassword = value;
                    });
                  }),
            ),
            isClient
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '나이',
                            hintText: '나이를 입력하세요'),
                        onChanged: (value) {
                          setState(() {
                            inputAge = value;
                          });
                        }),
                  ),
            isClient
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '지역',
                            hintText: '지역을 입력하세요'),
                        onChanged: (value) {
                          setState(() {
                            inputLocal = value;
                          });
                        }),
                  ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  user.add(int.parse(inputAge));
                  user.add(inputName);
                  user.add(inputPassword);
                  user.add(inputId);
                  user.add(inputLocal);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginDemo()));
                },
                child: const Text(
                  '회원가입 완료',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
