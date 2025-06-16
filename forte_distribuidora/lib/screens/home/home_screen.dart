import 'package:flutter/cupertino.dart';
import 'package:forte_distribuidora/screens/widgets/home/hero_banner.dart';

import '../widgets/product/products_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
