import 'package:flutter/material.dart';
import '../client_test/level1.dart';

class Base extends StatelessWidget {
  const Base({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        // width: MediaQuery.of(context).size.width * .7,
        // height: MediaQuery.of(context).size.height * 5,

        color: const Color.fromRGBO(27, 98, 124, 1),
        child: const Level1(),
      ),
      // Level1(),
    );
  }
}
