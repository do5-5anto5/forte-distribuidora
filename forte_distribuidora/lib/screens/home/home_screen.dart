import 'package:flutter/cupertino.dart';
import 'package:forte_distribuidora/screens/widgets/home/hero_banner.dart';

import '../widgets/home/value_proposition.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeroBanner(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: const ValueProposition(),
          ),
        ],
      ),
    );
  }
}
