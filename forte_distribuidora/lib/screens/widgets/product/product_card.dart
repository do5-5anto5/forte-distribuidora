import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../domain/data/models/product.dart';
import '../../../utils/constants.dart';

class ProductContentShow extends StatefulWidget {
  final Product product;
  final VoidCallback press;

  const ProductContentShow({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  State<ProductContentShow> createState() => _ProductContentShowState();
}

class _ProductContentShowState extends State<ProductContentShow> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (isHover) {
            isHover = false;
          } else {
            isHover = true;
          }
        });
        widget.press;
      },
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
                    widget.product.image,
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            isHover
                ? Container(
                  color: Colors.black12,
                )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final List<Product> prodList;

  const ProductCard({super.key, required this.prodList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.countBuilder(
        //shrink wrap to avoid error
        shrinkWrap: false,
        physics: const ClampingScrollPhysics(),
        crossAxisCount: 4,
        itemCount: prodList.length,
        itemBuilder:
            (BuildContext context, int index) =>
                ProductContentShow(press: () {}, product: prodList[index]),
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class ProductCardMobile extends StatelessWidget {
  final List<Product> prodList;

  const ProductCardMobile({super.key, required this.prodList});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: false,
      physics: const ClampingScrollPhysics(),
      crossAxisCount: 2,
      itemCount: prodList.length,
      itemBuilder:
          (BuildContext context, int index) =>
              ProductContentShow(press: () {}, product: prodList[index]),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}
