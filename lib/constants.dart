import 'dart:ui';

String apiUrl = 'https://panel.supplyline.network/api/';
String buy = 'ক্রয়', sell = 'বিক্রয়', profit = 'লাভ';
String notStock = 'স্টকে নাই';

String color1 = '#DA2079';
String color2 = '#646464';
String bgColor = '#F7F2FF';

Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
  return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
}