import 'package:flutter/material.dart';

class FeatureContainer extends StatelessWidget {
  const FeatureContainer(
      {required this.url, required this.heading, required this.content});

  final String url;
  final String heading;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        // alignment: Alignment.centerLeft,
        height: MediaQuery.sizeOf(context).height * 0.6,
        width: MediaQuery.sizeOf(context).width * 0.80,
        decoration: BoxDecoration(
            border: const Border(
              right: BorderSide(width: 2.0, color: Colors.grey),
              bottom: BorderSide(width: 2.0, color: Colors.grey),
            ),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.25,
              // width: MediaQuery,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.0125,
            ),
            Text(
              heading,
              style: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.015,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(27, 98, 124, 1)),
            ),
            const Divider(
              height: 10.0,
            ),
            Text(
              content,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromRGBO(29, 58, 71, 1),
                // textStyle: TextStyle(
                //   color: Colors.white,
                // ),
              ),
              onPressed: () {},
              child: const Text("KNOW MORE"),
            ),
          ],
        ),
      ),
    );
  }
}
