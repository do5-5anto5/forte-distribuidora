import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/responsive.dart';

class ValueProposition extends StatelessWidget {
  const ValueProposition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ValuePropositionCard(
                  image: "assets/images/grants_banner_1.png",
                  title: '',
                  press: () {}),
              ValuePropositionCard(
                  image: "assets/images/grants_banner_2.png",
                  title: '',
                  press: () {}),
              ValuePropositionCard(
                  image: "assets/images/grants_banner_3.png",
                  title: '',
                  press: () {}),
            ],
          ),
        if (!Responsive.isDesktop(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ValuePropositionCard(
                  image: "assets/images/grants_banner_1.png",
                  title: '',
                  press: () {}),
              ValuePropositionCard(
                  image: "assets/images/grants_banner_2.png",
                  title: '',
                  press: () {}),
              ValuePropositionCard(
                  image: "assets/images/grants_banner_3.png",
                  title: '',
                  press: () {}),
            ],
          ),
      ],
    );
  }
}

class ValuePropositionCard extends StatefulWidget {
  const ValuePropositionCard({
    super.key,
    required this.image,
    required this.title,
    required this.press,
  });
  final String image, title;
  final VoidCallback press;
  @override
  State<ValuePropositionCard> createState() => _ValuePropositionCardState();
}

class _ValuePropositionCardState extends State<ValuePropositionCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Container(
          width: _size.width <= 770
              ? _size.width
              : _size.width >= 975
              ? 300
              : 200,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
              color: kDarkgreyColor, boxShadow: [if (isHover) kDefaultShadow]),
          child: Column(
            children: [
              Image.asset(
                widget.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
                isAntiAlias: true,
              ),
              // const SizedBox(
              //   height: 15,
              // ),
              // MaterialButton(
              //   color: kSecondaryColor,
              //   height: 40,
              //   onPressed: () {},
              //   child: Text(
              //     widget.title,
              //     style: const TextStyle(color: kWhiteColor),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}