import 'package:fliqaindia/models/blog_element.dart';
import 'package:flutter/material.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vertical_nav_bar/vertical_nav_bar.dart';
import '../models/feature_container.dart';
import '../models/feature_tile.dart';
import '../models/flip_container.dart';
import '../models/overlap_containers.dart';
import '../models/blog_element.dart';
import '../models/client_test/base.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const options = [
  "Home",
  " Services",
  " Portfolio",
  "Learning",
  "Blog",
  "About us"
];

const imgList = [
  "https://images.pexels.com/photos/3455741/pexels-photo-3455741.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/3527320/pexels-photo-3527320.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/3527329/pexels-photo-3527329.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
];

const url =
    "https://media.licdn.com/dms/image/C5603AQH8BQEe0lK-fg/profile-displayphoto-shrink_200_200/0/1599463327286?e=2147483647&v=beta&t=brlAznQFHBTd-ZJzDiqffDCjQ8l5ko5raybXdRpW9NM";

class FliqaHome extends StatefulWidget {
  const FliqaHome({super.key});

  @override
  State<FliqaHome> createState() => _FliqaHomeState();
}

class _FliqaHomeState extends State<FliqaHome> {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 20.0, right: 20.0),
                          // child: Text(
                          //   'No. ${imgList.indexOf(item)} image',
                          //   style: const TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 20.0,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Container(
          height: 150,
          width: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await showTopModalSheet(
                  context,
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 150,
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(url),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    size: 40.0,
                                  ))
                            ],
                          ),
                          const Text("Home"),
                          const Text("Services"),
                          const Text("Portfolio"),
                          const Text("Learning"),
                          const Text("Blog"),
                          const Text("About us"),
                        ]),
                  ),
                );
              },
              icon: const Icon(Icons.list))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // VerticalNavBar(
            //     selectedIndex: 0, items: [], onItemSelected: (int val) {}),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Stack(children: [
                Center(
                  child: Container(
                    // height: MediaQuery.sizeOf(context).width * 1,
                    width: MediaQuery.sizeOf(context).width * .75,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(214, 237, 241, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            bottom: 8.0,
                          ),
                          child: Text(
                            "Why Choose us",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 30.0,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 24.0, left: 24.0, right: 24.0, bottom: 50.0),
                          child: Center(
                            child: Text(
                              "Fliqalndia is one of the leading creative platforms in India where you can get everything under one roof. We provide 24*7 Photography services., whether it could be wedding photography or a destination shoot. We also provide you with a wide range of graphic design services, full-day photography, music video shoot and many more. You can book a free consultation today to see how passionately our teams work. Checkout our lists of services.",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0425,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            const FeaturesTile(
              url: "https://www.fliqaindia.com/assets/image%20197-00a31590.png",
              // "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Circle-icons-camera.svg/2048px-Circle-icons-camera.svg.png",
              heading: "24*7 Services",
              content:
                  "We provide 24*7 Photography services., whether it could be wedding photography or a destination shoot.",
            ),
            const FeaturesTile(
              url: "https://www.fliqaindia.com/assets/image%20197-00a31590.png",
              heading: "Affordable Packages",
              content:
                  "Quality photography at a price that fits your budget. Our affordable packages ensure you get exceptional service.",
            ),
            const FeaturesTile(
              url: "https://www.fliqaindia.com/assets/image%20198-e5766714.png",
              heading: "Proven Expertise",
              content:
                  "With a track record of excellence, our team's proven expertise ensures that every moment is captured with precision and skill.",
            ),
            const FeaturesTile(
              url: "https://www.fliqaindia.com/assets/image%20200-3eb15f75.png",
              heading: "Award Winning Teams",
              content:
                  "Award-winning teams bring unmatched expertise and creativity to every photo, ensuring your moments are captured.",
            ),
            const FeaturesTile(
              url: "https://www.fliqaindia.com/assets/img5-470f6648.png",
              heading: "Creative Vision",
              content:
                  "We capture moments with an artistic flair, ensuring your memories are transformed into timeless works of art.",
            ),
            const FeaturesTile(
              url: "https://www.fliqaindia.com/assets/img6-730d6a5b.png",
              heading: "Customized Packages",
              content:
                  "Our team offers customized packages specific requirements, ensuring you get the perfect coverage for your special moments.",
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "What We Offer",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                      "We offer a wide range of services to your preferences...",
                      style: TextStyle(color: Color.fromRGBO(9, 67, 88, 1)))
                ],
              ),
            ),

            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: ,

            const FeatureContainer(
              url:
                  "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fwhat-we-offer%2Fwedding-event.jpg?alt=media&token=6bd3e3eb-85dd-4002-a744-363f2511898e",
              heading: "EVENTS",
              content:
                  "\nWedding Photography\n Pre-wedding Shoot\n Birthday Photography\n Corporate Photography\n Portfolio Shoot\n Product Photography\n",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const FeatureContainer(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fwhat-we-offer%2Fphotography.png?alt=media&token=a3e56236-a690-4f77-a99b-e6bd4d7306c3",
                heading: "24*7 PHOTOGRAPHY",
                content:
                    "\nFull day Shoot\nHalf day Shoot\nFashion Shoot\nModel Shoot\nDrone Shoot\nTravel Shoot\n"),
            const SizedBox(
              height: 30.0,
            ),
            const FeatureContainer(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fwhat-we-offer%2Fgraphics.jpg?alt=media&token=c10960fd-645e-41de-8854-0fad2621d160",
                heading: "GRAPHICS DESIGNING",
                content:
                    "\nPoster Designing\nLogo Designing\nMotion Graphics\nUI/UX Design\nBusiness Card\nIllustrator Design"),
            const SizedBox(
              height: 30.0,
            ),
            const Heading(
              txt: "Gallery",
            ),
            const RotatingContainer(
                isImage: true,
                urlndcontent:
                    'https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fgallery%2Fgallery-image4.jpg?alt=media&token=ca0135ff-5ca3-4dc1-ab0c-da5f88ec8e42'),
            const RotatingContainer(
                isImage: true,
                urlndcontent:
                    'https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fgallery%2Fgallery-image8.jpg?alt=media&token=0e501685-70a2-4b45-ba47-ace8d7b30f77'),
            const RotatingContainer(
                isImage: true,
                urlndcontent:
                    'https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fgallery%2Fgallery-image6.jpg?alt=media&token=e9ec174f-d7a2-4c32-9269-1dcfa27a261d'),
            const RotatingContainer(
                isImage: true,
                urlndcontent:
                    'https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fgallery%2Fgallery-image3.jpg?alt=media&token=80e84dfe-e77d-4a5b-92eb-ed5eea8207ef'),
            const SizedBox(
              height: 30.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(child: Divider()),
                SizedBox(width: 100.0, child: Divider()),
                // Spacer(),
                Text(
                  "Offers",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Spacer(),
                SizedBox(width: 100.0, child: Divider()),
              ],
            ),
            const OverlapContainers(
              url:
                  "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fwhat-we-offer%2Fwedding-event.jpg?alt=media&token=6bd3e3eb-85dd-4002-a744-363f2511898e",
              label: "WEDDING SHOOT",
            ),

            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Foffers%2Fpre-wedding200.jpg?alt=media&token=4527f488-577c-4871-bd2c-d2c133991cfd",
                label: "PRE-WEDDING SHOOT"),

            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Foffers%2Fbirthday200.jpg?alt=media&token=9e83f756-203e-4b83-98d8-6412d3f94711",
                label: "BIRTHDAY SHOOT"),

            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Foffers%2Fproduct-shoot2001.jpg?alt=media&token=305bc5fe-53e8-4c0f-94b9-f38bf2a83f05",
                label: "PRODUCT SHOOT"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Foffers%2Fui-ux200.jpg?alt=media&token=6e4d41ad-333b-44d4-8110-c1fa1aa0be9f",
                label: "UI/UX DESIGN"),
            const SizedBox(
              height: 30.0,
            ),
            const Heading(
              txt: "Real Wedding",
            ),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Freal-wedding%2Fimage2.jpg?alt=media&token=93a0a62b-3d27-439a-a737-e6907f39e0a7",
                label: "BIJOY & SHREYA"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Freal-wedding%2Fimage3.jpg?alt=media&token=e87cbcca-85dc-4274-b904-2f53cb30190c",
                label: "MONOJ & RIYAN"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Freal-wedding%2Fimage1.png?alt=media&token=9b897005-4d61-4150-a976-d6744afafbc2",
                label: "RISHI & ADRITA"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Freal-wedding%2Fimage4.jpg?alt=media&token=b9739b5e-2826-4374-ab8d-1dc28f5c7d3c",
                label: "SHUFAL & MITA"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Freal-wedding%2Fimage5.jpg?alt=media&token=8e57c9c1-7f0c-4798-9e4f-77584cc5c9c0",
                label: "RAHIT & ARISHA"),
            const SizedBox(
              height: 30.0,
            ),
            const Heading(txt: "Courses"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fcourses%2Fhome-course01.jpg?alt=media&token=39b07d1e-db18-4abd-b550-1b32392ffef9",
                label: "PHOTOGRAPHY"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fcourses%2Fhome-course02.jpg?alt=media&token=f2415603-064a-4664-97ff-cf7605b78516",
                label: "VIDEOGRAPHY"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fcourses%2Fhome-course03.jpg?alt=media&token=4d5359b0-c940-41ca-85c2-fc22422aad49",
                label: "CINEMATOGRAPHY"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fcourses%2Fhome-course04.jpg?alt=media&token=87f0f26c-1531-409a-b9d3-387efa25406d",
                label: "ANIMATION"),
            const OverlapContainers(
                url:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fcourses%2Fhome-course05.jpg?alt=media&token=ddd91e6b-40fb-4a61-8c0a-92b011308728",
                label: "DESIGNING"),
            const SizedBox(
              height: 30.0,
            ),
            const Heading(txt: "About Us"),
            const SizedBox(
              height: 30.0,
            ),
            const RotatingContainer(
                isImage: true,
                urlndcontent:
                    "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fabout-us%2Flogo-img.jpg?alt=media&token=4423c948-8ba9-4857-84d3-9409de8738ea"),
            const RotatingContainer(
                urlndcontent:
                    "FliqaIndia is one of the leading creative platforms in India where you can get everything under one roof. We have a team of experts for different types of photography and cinematography, whether it could be wedding photography or cute baby portrait. We are blessed to witness and preserve the magical moments that unfold. With each click, we freeze emotions, stolen glances, and heartfelt exchanges, encapsulating the essence of love.",
                isImage: false),
            // SizedBox(
            //   height: MediaQuery.of(context).size.width * 0.025,
            // ),
            const Heading(txt: "Blogs"),
            const SizedBox(
              height: 30.0,
            ),
            const BlogElement(
              url: "https://i.ibb.co/xXsRHRc/photography-2.jpg",
              heading: "Capturing Photos in different styles",
              content:
                  "The word photography means 'drawing with light,' which derives from the Greek photo, meaning...",
            ),
            const BlogElement(
              url: "https://i.ibb.co/FzYPcx8/photography-1.jpg",
              heading:
                  "Basic Post-Processing Tips to Instantly Improve Your Photos",
              content:
                  "Photography post-processing opens up the enormous potential for transforming an image, whether to...",
            ),
            const BlogElement(
              url: "https://i.ibb.co/NLkT2QB/photography-3.jpg",
              heading:
                  "Basic Post-Processing Tips to Instantly Improve Your Photos",
              content:
                  "Light plays a vital role in photography. Photography is an image created by light falling ...",
            ),
            const BlogElement(
              url: "https://i.ibb.co/7jbrTrm/photography-4.jpg",
              heading: "Composition and Perspective of the Photography",
              content:
                  "Composition in photography is defined as positioning the objects in the frame so that the...",
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Base(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Text(
                "Photography & Videography",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .07,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  "By Categories",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .05,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  "Wedding Photography\nWedding Videography\nProduct Photography\nBirthday Photography\nPortfolio Photography\nStock Photography\nPre-Wedding Photography\nFashion Photography\nEvent Photography\nCorporate Photography\nDrone Videography\nModel Photography\nTravel Photography\nFull Day Photography\nHalf Day Photography\nUnder Water Photography",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .03,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  "By Location",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .05,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child:
                  // width: MediaQuery.of(context).size.width * .3,
                  Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Agra",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Udaipur",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Goa",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Mumbai",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Dalhousie",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Lakshadweep",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Manali",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Amritsar",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Jaipur",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Leh Ladakh",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Varansi",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Jaisalmer",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "New Delhi",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Coorg",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Alleppey",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Ooty",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(child: Divider()),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Divider()),
                // Spacer(),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.15,
                  child: Image.network(
                    "https://icons.veryicon.com/png/o/internet--web/flatten-icon/businessman-1.png",
                    height: MediaQuery.of(context).size.width * 0.20,
                    fit: BoxFit.cover,
                  ),
                ),
                // Spacer(),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Divider())
              ],
            ),
            Text(
              "Contact a Creative Expert",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            Text("for Free",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                )),
            Text(
              "We'd love to assist you!",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            Text(
              "24*7 , 365 days",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Icon(
                    Icons.call,
                    color: Color.fromRGBO(27, 98, 124, 1),
                  ),
                ),
                Text(
                  "Call +91 9641817485",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27, 98, 124, 1)),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                padding: const EdgeInsets.only(top: 8.0),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.25,
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/fliqaindia-website-firebase.appspot.com/o/home-page-assets%2Fabout-us%2Flogo-img.jpg?alt=media&token=4423c948-8ba9-4857-84d3-9409de8738ea",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Wrap(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.facebook, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.instagram,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.youtube,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.linkedin,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.twitter,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.whatsapp,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.pinterest,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.0, color: Colors.white),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              color: Colors.white),
                          height: MediaQuery.of(context).size.width * 0.15,
                          width: MediaQuery.of(context).size.width * 0.25,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.white),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                            color: Color.fromRGBO(66, 171, 190, 1),
                          ),
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.15,
                        ),
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: const Divider(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Information",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Branding\nDesing\nMarketing\nAdvertisement\nAbout us\nContact\nJobs\nPress kit\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Get the FliqaIndia app",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.07,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.18,
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Google_Play_Store_badge_EN.svg/270px-Google_Play_Store_badge_EN.svg.png"),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.18,
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Download_on_the_App_Store_Badge.svg/640px-Download_on_the_App_Store_Badge.svg.png"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Adress- 7th Floor\nWebel Bhavan\nPremises,Monibhandar\nBuilding, GP Block,Sector V, Bidhannagar,\nKolkata, West Bengal\n700091",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: const Divider(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "\nTerms & Conditions\nCookies\nWant to be Partner?\nAbout Us\nJoin Our Team\nFliqa india\n2023 Fliqa india\nCorporation Inc. All\nrights reserved.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({
    required this.txt,
    super.key,
  });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Expanded(child: Divider()),
        SizedBox(
            width: MediaQuery.of(context).size.width * .20,
            child: const Divider()),
        // Spacer(),
        Text(
          txt,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * .07,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Spacer(),
        SizedBox(
            width: MediaQuery.of(context).size.width * .20,
            child: const Divider()),
      ],
    );
  }
}
