import "package:flutter/material.dart";

class BlogElement extends StatelessWidget {
  const BlogElement(
      {super.key,
      required this.url,
      required this.heading,
      required this.content});

  final String url;
  final String heading;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(
                    url,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width * .6,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(heading,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .05,
                      fontWeight: FontWeight.w500,
                    ))),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: Text(content,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width * .04,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
