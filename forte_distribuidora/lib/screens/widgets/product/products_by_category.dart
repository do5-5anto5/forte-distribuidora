import 'package:flutter/material.dart';
import 'package:forte_distribuidora/screens/widgets/product/product_card.dart';

import '../../../domain/data/models/data_list.dart';
import '../../../utils/constants.dart';
import '../../../utils/responsive.dart';

class ProductsByCategory extends StatefulWidget {
  const ProductsByCategory({super.key});

  @override
  State<ProductsByCategory> createState() => _ProductsByCategoryState();
}

class _ProductsByCategoryState extends State<ProductsByCategory> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    if (Responsive.isDesktop(context)) {
      return DefaultTabController(
        length: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TabBar(
                indicatorColor: kPrimaryColor,
                unselectedLabelColor: Colors.black,
                labelColor: kPrimaryColor,
                indicatorWeight: 2.0,
                unselectedLabelStyle: TextStyle(
                  fontSize: _size.width >= 414 ? 18 : 12,
                ),
                labelStyle: TextStyle(
                  fontSize: _size.width >= 414 ? 18 : 12,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(text: "Placas"),
                  Tab(text: "Parafusos"),
                  Tab(text: "Ferragens"),
                  Tab(text: "Fita"),
                  Tab(text: "Massa"),
                ],
              ),
              SizedBox(
                height: 350,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ProductCard(prodList: sheetsList),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ProductCard(prodList: screwsList),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ProductCard(prodList: metalFramingList),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ProductCard(prodList: tapesList),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ProductCard(prodList: jointCompoundsList),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Column(
        children: [
          DefaultTabController(
            length: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: kPrimaryColor,
                    unselectedLabelColor: Colors.black,
                    labelColor: kPrimaryColor,
                    indicatorWeight: 2.0,
                    unselectedLabelStyle: TextStyle(
                      fontSize: _size.width >= 414 ? 18 : 12,
                    ),
                    labelStyle: TextStyle(
                      fontSize: _size.width >= 414 ? 18 : 12,
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: const [
                      Tab(text: "Placas"),
                      Tab(text: "Parafusos"),
                      Tab(text: "Ferragens"),
                    ],
                  ),
                  SizedBox(
                    height: 350,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: ProductCardMobile(prodList: sheetsList),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: ProductCardMobile(prodList: screwsList),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: ProductCardMobile(prodList: metalFramingList),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          DefaultTabController(
            length: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: kPrimaryColor,
                    unselectedLabelColor: Colors.black,
                    labelColor: kPrimaryColor,
                    indicatorWeight: 2.0,
                    unselectedLabelStyle: TextStyle(
                      fontSize: _size.width >= 414 ? 18 : 12,
                    ),
                    labelStyle: TextStyle(
                      fontSize: _size.width >= 414 ? 18 : 12,
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: const [Tab(text: "Fita"), Tab(text: "Massa")],
                  ),
                  SizedBox(
                    height: 350,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: ProductCardMobile(prodList: tapesList),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: ProductCardMobile(
                            prodList: jointCompoundsList,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}
