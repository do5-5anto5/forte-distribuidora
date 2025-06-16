import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:forte_distribuidora/utils/top_picks.dart';

import '../../../domain/data/models/product.dart';
import '../../../utils/constants.dart';

class TopPicksGrid extends StatelessWidget {
  const TopPicksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.countBuilder(
        //shrink wrap to avoid error
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        crossAxisCount: 4,
        itemCount: topPicks().length,
        itemBuilder:
            (BuildContext context, int index) =>
                ProductsCard(press: () {}, products: topPicks()[index]),
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class TopPicksGridMobile extends StatelessWidget {
  const TopPicksGridMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.countBuilder(
        //shrink wrap to avoid error
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        crossAxisCount: 2,
        itemCount: topPicks().length,
        itemBuilder:
            (BuildContext context, int index) =>
                ProductsCard(press: () {}, products: topPicks()[index]),
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class ProductsCard extends StatefulWidget {
  final Product products;
  final VoidCallback press;

  const ProductsCard({super.key, required this.products, required this.press});

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        width: 300,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kgreyColor, width: 3),
          boxShadow: [if (isHover) kDefaultShadow],
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    widget.products.image,
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.products.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // Text(
                  //   "\$${widget.products.price}",
                  //   style: const TextStyle(
                  //     fontSize: 16,
                  //   ),
                  // ),
                ],
              ),
            ),
            // isHover
            // ? Container(
            //   color: Colors.black12,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       MaterialButton(
            //         color: kSecondaryColor,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(50),
            //         ),
            //         height: 40,
            //         onPressed: () {},
            //         child: const Text(
            //           "Quick View",
            //           style: TextStyle(color: kWhiteColor),
            //         ),
            //       ),
            //       // const SizedBox(
            //       //   height: 20,
            //       // ),
            //       // MaterialButton(
            //       //   shape: RoundedRectangleBorder(
            //       //       borderRadius: BorderRadius.circular(50)),
            //       //   color: kSecondaryColor,
            //       //   height: 40,
            //       //   onPressed: () {},
            //       //   child: const Text(
            //       //     "Shop Now",
            //       //     style: TextStyle(color: kWhiteColor),
            //       //   ),
            //       // ),
            //     ],
            //   ),
            // )
            // : Container(),
          ],
        ),
      ),
    );
  }
}
