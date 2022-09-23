import 'dart:ui';

String apiRoot = 'https://panel.supplyline.network/api/product-details/';
String buy = 'ক্রয়', sell = 'বিক্রয়', profit = 'লাভ';
String buyPrice = 'ক্রয়মূল্যঃ', sellPrice = 'বিক্রয়মূল্যঃ';
String notStock = 'স্টকে নাই';
String productBar = 'প্রোডাক্ট ডিটেইল';
String searchHint = 'কাঙ্ক্ষিত পণ্যটি খুঁজুন';
String brandName = 'ব্রান্ডঃ';
String distributor = 'ডিস্ট্রিবিউটরঃ';

String color1 = '#DA2079';
String color2 = '#646464';
String bgColor = '#F7F2FF';

Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
  return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
}
