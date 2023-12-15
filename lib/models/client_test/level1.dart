import 'package:flutter/material.dart';
import '../client_test/level2.dart';

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Client Testimonial",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * .070,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      const ClientCards(
          name: "Aditya",
          des: "WEDDING",
          url:
              "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Ftestmonial%2Freview01.png?alt=media&token=c165b578-e97b-46bd-84af-28041b40b215"),
      const ClientCards(
          name: "Rahul",
          des: "PRE-WEDDING",
          url:
              "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Ftestmonial%2Freview02.jpg?alt=media&token=9924e04e-58f8-400b-bf89-55071a78ee80"),
      const ClientCards(
          name: "Aliya",
          des: "PRODUCT",
          url:
              "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Ftestmonial%2Freview03.jpg?alt=media&token=5f1d1ac7-5bbd-4fc2-8fdd-5b3c1ee6b4a2"),
      const ClientCards(
          name: "Monoj",
          des: "CORPORATE",
          url:
              "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Ftestmonial%2Freview04.png?alt=media&token=717a8037-efac-42b6-9589-a80d5b49616b"),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          padding: EdgeInsets.only(top: 16),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Ffliqaindia-orginal%2FfliqaIndia%20original.png?alt=media&token=3960abf9-6954-4f57-a79c-2ce5270ad150"),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.width * .2,
          width: MediaQuery.of(context).size.width * .8,
        ),
      )
    ]);
  }
}

class ClientCards extends StatelessWidget {
  const ClientCards({
    super.key,
    required this.name,
    required this.des,
    required this.url,
  });

  final String name;
  final String des;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14.0,
        left: 8.0,
        right: 8.0,
      ),
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(url),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: Level2(name: name, des: des)),
        )
      ]),
    );
  }
}
