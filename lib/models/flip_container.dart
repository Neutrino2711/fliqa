import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math';

class RotatingContainer extends StatefulWidget {
  const RotatingContainer({required this.urlndcontent, required this.isImage});

  final String urlndcontent;
  final bool isImage;

  @override
  _RotatingContainerState createState() => _RotatingContainerState();
}

class _RotatingContainerState extends State<RotatingContainer> {
  // late AnimationController _animationController;

  late FlipCardController _flipController;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _flipController = FlipCardController();
    // _animationController = AnimationController(
    // vsync: this,
    // duration: Duration(seconds: 1),
    // )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('rotating_container_key'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.0 && !_isAnimating) {
          // _animationController.forward(from: 0);
          _flipController.toggleCard();
          _isAnimating = true;
        } else if (visibilityInfo.visibleFraction == 0.0) {
          // _animationController.stop();
          _isAnimating = false;
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0),
        child: FlipCard(
          flipOnTouch: false,
          controller: _flipController,
          front: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: widget.isImage
                    ? DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.urlndcontent),
                      )
                    : null,
              ),
              height: widget.isImage
                  ? MediaQuery.sizeOf(context).height * .3
                  : null,
              width: MediaQuery.sizeOf(context).width * .6,
              child: widget.isImage
                  ? null
                  : Column(
                      children: [
                        Center(
                          child: Text(
                            widget.urlndcontent,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * .035,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(27, 98, 124, 1),
                              // textStyle: TextStyle(
                              //   color: Colors.white,
                              // ),
                            ),
                            onPressed: () {},
                            child: const Text("KNOW MORE"),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
          back: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: widget.isImage
                    ? DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.urlndcontent),
                      )
                    : null,
              ),
              height: widget.isImage
                  ? MediaQuery.sizeOf(context).height * .3
                  : null,
              width: MediaQuery.sizeOf(context).width * .6,
              child: widget.isImage
                  ? null
                  : Column(
                      children: [
                        Center(
                          child: Text(
                            widget.urlndcontent,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * .035,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(27, 98, 124, 1),
                              // textStyle: TextStyle(
                              //   color: Colors.white,
                              // ),
                            ),
                            onPressed: () {},
                            child: const Text("KNOW MORE"),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
