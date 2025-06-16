import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

//change the name of class
class HeroBanner extends StatefulWidget {
  const HeroBanner({super.key});

  @override
  State<HeroBanner> createState() => _HeroBannerState();
}

class _HeroBannerState extends State<HeroBanner> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        CarouselSlider(
          items: [
            SliderCard(
              title: 'Drywall',
              image: 'assets/images/hero_banner1.png',
              press: () {},
            ),
            SliderCard(
              title: 'Glasroc',
              image: 'assets/images/hero_banner2.png',
              press: () {},
            ),
            SliderCard(
              title: 'Ferragem',
              image: 'assets/images/hero_banner3.png',
              press: () {},
            ),
          ],
          options: CarouselOptions(
            height:
                _size.width == 300
                    ? 250
                    : _size.width >= 500
                    ? 350
                    : 300,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int p, carouselPageChangedReason) {
              setState(() {
                index = p;
              });
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 3,
          position: index.toDouble(),
          decorator: DotsDecorator(
            activeColor: kPrimaryColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}

class SliderCard extends StatelessWidget {
  const SliderCard({
    super.key,
    required this.title,
    required this.image,
    required this.press,
  });
  final String title, image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: kgreyColor,
      // this color will be visible only if the image does not fill the entire container
      child: Stack(
        // Use Stack to overlay the text and button on the image
        children: [
          // Image that fills the entire  Container
          Positioned.fill(
            child: Image.asset(
              image,
              fit: _size.width == 300
                  ? BoxFit.contain
                  : _size.width >= 500
                  ? BoxFit.fill
                  : BoxFit.contain,
              color: kgreyColor,
              colorBlendMode: BlendMode.darken,
              // Makes the image cover the entire container
            ),
          ),
          // Text and button (centered on the image)
          // Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     // add a color background or shadow to the text to make it visible on the image
          //     // decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         AutoSizeText(
          //           title,
          //           textAlign: TextAlign.center,
          //           minFontSize: 16,
          //           maxLines: 2,
          //           style: TextStyle(
          //             fontSize: _size.width >= 500 ? 28 : 18,
          //             fontWeight: FontWeight.bold,
          //             color: kWhiteColor,
          //             // Change the text color to be visible on the image
          //             shadows: const [
          //               // Add shadow to make the text visible on the image
          //               Shadow(
          //                 blurRadius: 10.0,
          //                 color: Colors.black,
          //                 offset: Offset(2.0, 2.0),
          //               ),
          //             ],
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 20,
          //         ),
          //         InkWell(
          //           onTap: press,
          //           child: Container(
          //             padding:
          //             const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          //             decoration: const BoxDecoration(
          //               color: Colors.black, // Cor do botão
          //             ),
          //             child: Text(
          //               "Comprar",
          //               style: TextStyle(
          //                 fontSize: _size.width >= 500 ? 18 : 12,
          //                 color: kWhiteColor,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
