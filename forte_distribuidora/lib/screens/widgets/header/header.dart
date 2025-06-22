import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/constants.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      if (!await launchUrl(uri, mode: LaunchMode.platformDefault)) {
        _showErrorSnackBar(uri.host);
      }
    } else {
      _showErrorSnackBar(uri.host);
    }
  }

  void _showErrorSnackBar(String host) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Não foi possível abrir o link para $host')),
      );
    }
    debugPrint('Could not launch $host');
  }

  @override
  Widget build(BuildContext context) {
    final socialUrls = [
      'https://www.instagram.com/forte_distribuidora_de_gesso/',
      'https://wa.me/553597098053',
    ];

    final socialButtonAssets = [
      'assets/images/icons/instagram.svg',
      'assets/images/icons/whatsapp.svg',
    ];

    final _size = MediaQuery.of(context).size;

    return Container(
      color: kWhiteColor,
      width: double.infinity,
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 70,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding:
                          _size.width >= 500
                              ? EdgeInsets.only(right: 10)
                              : EdgeInsets.all(0.0),
                      child: SizedBox(
                        height: 60,
                        child: ListView.separated(
                          itemCount: socialButtonAssets.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder:
                              (context, child) => SizedBox(width: 8.0),
                          itemBuilder: (context, index) {
                            return IconButton(
                              onPressed: () {
                                _launchURL(socialUrls[index]);
                              },
                              icon: SvgPicture.asset(
                                socialButtonAssets[index],
                                width: _size.width >= 500 ? 50 : 40,
                                height: _size.width >= 500 ? 50 : 40,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WebMenu extends StatelessWidget {
  const WebMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuItems(isActive: true, title: 'Home', press: () {}),
        MenuItems(title: 'Products', press: () {}),
        MenuItems(title: 'Category', press: () {}),
        MenuItems(title: 'Contact Us', press: () {}),
      ],
    );
  }
}

class MobMenu extends StatelessWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MenuItems(isActive: true, title: 'Home', press: () {}),
            MenuItems(title: 'Products', press: () {}),
          ],
        ),
        Row(
          children: [
            MenuItems(title: 'Category', press: () {}),
            MenuItems(title: 'Contact Us', press: () {}),
          ],
        ),
      ],
    );
  }
}

class MenuItems extends StatefulWidget {
  final String title;
  final VoidCallback press;
  final bool isActive;

  const MenuItems({
    Key? key,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: widget.press,
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color:
                    widget.isActive == true
                        ? kPrimaryColor
                        : isHover
                        ? kPrimaryColor
                        : Colors.transparent,
                width: 4,
              ),
            ),
          ),
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight:
                  widget.isActive == true
                      ? FontWeight.bold
                      : isHover
                      ? FontWeight.bold
                      : FontWeight.normal,
              fontSize: _size.width >= 370 ? 18 : 14,
              color:
                  widget.isActive == true
                      ? kPrimaryColor
                      : isHover
                      ? kPrimaryColor
                      : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
