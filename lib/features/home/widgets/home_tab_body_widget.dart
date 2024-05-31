import 'package:flutter/material.dart';

import 'tab_card_widget.dart';

class HomeTabBodyWidget extends StatelessWidget {
  HomeTabBodyWidget({super.key});
  final _cards = <Widget>[
    TabCardWidget(),
    TabCardWidget(),
    TabCardWidget(),
    TabCardWidget(),
    TabCardWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ...List.generate(
          _cards.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: size.width,
              height: size.width * 0.3,
              child: _cards[index],
            ),
          ),
        ).toList(),
      ],
    );
  }
}
