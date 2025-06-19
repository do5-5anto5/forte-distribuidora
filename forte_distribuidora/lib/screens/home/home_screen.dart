import 'package:flutter/cupertino.dart';
import 'package:forte_distribuidora/screens/widgets/home/hero_banner.dart';

import '../widgets/header/header.dart';
import '../widgets/product/products_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    var mobileHeaderPadding =
    _size.width <= 500
        ? 10.0
        : 0.0;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mobileHeaderPadding),
            child: const Header(),
          ),
          const HeroBanner(),
          Column(
            children: [
              const ProductSection(),
            ],
          ),
        ],
      ),
    );
  }
}
