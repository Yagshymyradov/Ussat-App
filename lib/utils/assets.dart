import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppIcons {
  time('time'),
  date('date'),
  add('add'),
  vila('vila'),
  office('office'),
  home('home'),
  chevronLeft('chevron-left'),
  questionCircle('question-circle'),
  repair('repair'),
  call('call'),
  category('category'),
  clear('clear'),
  filter('filter'),
  history('history'),
  notification('notification'),
  products('products'),
  search('search'),
  person('person');

  final String path;

  const AppIcons(this.path);

  String get _svg => 'assets/icons/$path.svg';

  String get _png => 'assets/icons/$path.png';

  String get _jpg => 'assets/icons/$path.jpg';

  Widget svgPicture({
    double? height,
    double? width,
    Color? color,
  }) =>
      SvgPicture.asset(
        _svg,
        height: height,
        width: width,
        color: color,
      );

  Widget get pngPicture => Image.asset(_png);

  Widget get jpgPicture => Image.asset(_jpg);
}
