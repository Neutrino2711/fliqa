import 'package:flutter/material.dart';

class Level2 extends StatelessWidget {
  const Level2({super.key, required this.name, required this.des});

  final String name;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.018,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  des,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.1,
        // ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        )
      ],
    );
  }
}
