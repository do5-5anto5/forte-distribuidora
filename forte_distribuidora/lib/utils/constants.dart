import 'package:flutter/material.dart';

//color
const kPrimaryColor = Color(0xff0379CC);
const kSecondaryColor = Color(0xff5CB2F2);
const kDarkblueColor = Color(0xff25396f);
const kgreyColor = Color(0xfff1f1f1);
const kDarkgreyColor = Color(0xff8d91a7);
const kWhiteColor = Color(0xffffffff);
const kBannerBackgroundColor = Color(0xff647684);

const kDefaultPadding = 20.0;
const kMaxWidth = 1232.0;
const kDefaultDuration = Duration(milliseconds: 250);

//our product shadow
final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 10),
  spreadRadius: 5,
  blurRadius: 60,
  color: kDarkblueColor.withAlpha(100),
);
