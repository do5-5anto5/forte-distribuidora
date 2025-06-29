import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  static const List<String> brands = [
    'assets/images/brands/gessoamerica.webp',
    'assets/images/brands/isover.webp',
    'assets/images/brands/placo.webp',
    'assets/images/brands/walsywa.webp',
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    if (Responsive.isDesktop(context)) {
      return Container(
        width: double.infinity,
        color: kBannerBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: _size.width >= 500 ? 400 : 200,
                    height: _size.width >= 500 ? 140 : 70,
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'Nossa Ampla rede de distribuição permite atender tanto pequenas obras quanto grandes projetos, sempre mantendo o compromisso com a qualidade superior dos produtos e a satisfação dos nossos clientes.',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: _size.width >= 500 ? 16 : 12,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 3,
              width: _size.width - 400,
              color: kWhiteColor,
              child: SizedBox(width: _size.width - 200),
            ),
            SizedBox(height: 30),
            Text(
              'Marcas que trabalhamos:',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: _size.width >= 500 ? 22 : 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                        brands.map((brandAssetPath) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  brandAssetPath,
                                  height: 84,
                                  width: 128,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 3,
              width: _size.width - 400,
              color: kWhiteColor,
              child: SizedBox(width: _size.width - 200),
            ),
            SizedBox(height: 30),
            Text(
              'Nossa Localização:',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: _size.width >= 500 ? 22 : 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Av. Terezinha Silos Ferreira, n 420 - Diamantina\n'
              'São Sebastiçao do Paraíso - Minas Gerais',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: _size.width >= 500 ? 18 : 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
          ],
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        color: kBannerBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 350,
                    height: 140,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Nossa Ampla rede de distribuição permite atender tanto pequenas obras quanto grandes projetos, sempre mantendo o compromisso com a qualidade superior dos produtos e a satisfação dos nossos clientes.',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: _size.width >= 500 ? 16 : 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 3,
              width: _size.width - 200,
              color: kWhiteColor,
              child: SizedBox(width: _size.width - 200),
            ),
            SizedBox(height: 30),
            Text(
              'Marcas que trabalhamos:',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: _size.width >= 500 ? 22 : 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Center(
              child: GridView.builder(
                shrinkWrap: true,
                // Importante para o GridView ocupar apenas o espaço necessário
                physics: const NeverScrollableScrollPhysics(),
                // Desabilita o scroll do GridView se ele estiver dentro de outro scroll
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // Define 2 colunas
                  crossAxisSpacing: 5,
                  // Espaçamento horizontal entre as colunas
                  mainAxisSpacing: 5,
                  // Espaçamento vertical entre as linhas
                  childAspectRatio:
                      1.6, // Ajuste esse valor para controlar a proporção (largura/altura) dos itens. 160/100 = 1.6
                ),
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  final brandAssetPath = brands[index];
                  return Center(
                    // Centraliza cada item na célula do grid
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 100,
                        width: 160,
                        child: Image.asset(
                          brandAssetPath,
                          height: 100,
                          width: 160,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 3,
              width: _size.width - 200,
              color: kWhiteColor,
              child: SizedBox(width: _size.width - 200),
            ),
            SizedBox(height: 30),
            Text(
              'Nossa Localização:',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: _size.width >= 500 ? 22 : 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Av. Terezinha Silos Ferreira, n 420 - Diamantina\n'
              'São Sebastiçao do Paraíso - Minas Gerais',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: _size.width >= 500 ? 18 : 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
          ],
        ),
      );
    }
  }
}
