import 'package:flutter/material.dart';
import 'package:cse40hackathon/main.dart';

class taskList extends StatelessWidget {
  const taskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 340,
      decoration: BoxDecoration(
          color: Colors.blue.shade100, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.house,
            size: 40,
          ),
          const Text(
            '용현동',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const Text(
            '~12.22',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.black)))),
              child: const Text(
                '상세',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginDemo()));
              }),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
