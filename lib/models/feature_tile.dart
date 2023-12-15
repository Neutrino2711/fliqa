import 'package:flutter/material.dart';

class FeaturesTile extends StatelessWidget {
  const FeaturesTile(
      {required this.url, required this.heading, required this.content});

  final String url;
  final String heading;
  final String content;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40.0,
        child: Image.network(url),
      ),
      // trailing: CircleAvatar(),
      title: Column(children: [
        Text(
          heading,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          content,
          style: const TextStyle(
            fontSize: 12.0,
          ),
        )
      ]),
    );
  }
}
