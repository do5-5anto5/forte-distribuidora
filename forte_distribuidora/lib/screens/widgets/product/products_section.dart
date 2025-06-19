import 'package:flutter/cupertino.dart';
import 'package:forte_distribuidora/screens/widgets/product/top_picks.dart';
import 'package:forte_distribuidora/screens/widgets/home/value_proposition.dart';
import 'package:forte_distribuidora/screens/widgets/product/products_by_category.dart';

import '../../../utils/constants.dart';
import '../../../utils/responsive.dart';

class ProductSection extends StatelessWidget {
  const  ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: kMaxWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 20),
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 5),
              //   margin: const EdgeInsets.symmetric(horizontal: 10),
              //   decoration: const BoxDecoration(
              //     border: Border(
              //       bottom: BorderSide(color: kSecondaryColor, width: 3),
              //     ),
              //   ),
              //   child: const Text(
              //     "Brands",
              //     style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              //   ),
              // ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kSecondaryColor, width: 3),
                  ),
                ),
                child: const Text(
                  "Em Destaque",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20),
              if (Responsive.isDesktop(context)) const TopPicksGrid(),
              if (!Responsive.isDesktop(context)) const TopPicksGridMobile(),

              //now we create trending Product model
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kSecondaryColor, width: 3),
                  ),
                ),
                child: const Text(
                  "Nossos Produtos",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20),
              const ProductsByCategory(),
              const SizedBox(height: 20),
              const ValueProposition(),
              // const SizedBox(height: 20),
        //       Container(
        //         padding: const EdgeInsets.symmetric(vertical: 5),
        //         margin: const EdgeInsets.symmetric(horizontal: 10),
        //         decoration: const BoxDecoration(
        //           border: Border(
        //             bottom: BorderSide(color: kSecondaryColor, width: 3),
        //           ),
        //         ),
        //         child: const Text(
        //           "Author",
        //           style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        //         ),
        //       ),
        //       const SizedBox(height: 20),
        //       const Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 10),
        //         child: Author(),
        //       ),
        //
        //       // now add all brands data
        //       //first of all we create model
        //       const SizedBox(height: 100),
        //       //bottom Navigation menu
            ],
          ),
        ),
      ],
    );
  }
}