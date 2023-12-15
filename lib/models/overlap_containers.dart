import 'package:flutter/material.dart';

class OverlapContainers extends StatelessWidget {
  const OverlapContainers({required this.url, required this.label});

  final String url;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 173, 222, 247),
              ),
              height: MediaQuery.sizeOf(context).height * .4,
              width: MediaQuery.sizeOf(context).width * .6,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      // height: MediaQuery.sizeOf(context).height * .3,
                      fit: BoxFit.cover,
                      image: NetworkImage(url),
                    ),
                  ),
                  height: MediaQuery.sizeOf(context).height * .35,
                  width: MediaQuery.sizeOf(context).width * .6,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    label,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .04,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(27, 98, 124, 1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
