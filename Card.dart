import 'package:flutter/material.dart';


class mycard {
  String name;
  String balance;
  String monthyear;
  String numbercard;
  String Image;
  final Color;
  mycard({
    required this.name,
    required this.balance,
    required this.monthyear,
    required this.numbercard,
    required this.Color,
    required this.Image

  });
}

List<mycard> aboutlist = [
  mycard(
      name: 'Balance',
      balance: '554,5665',
      monthyear: '12,24',
      numbercard: '***12455',
      Color: Colors.purple,
      Image:('assets/images/visa1.png'),
      ),
        mycard(
      name: 'Balance',
      balance: '254,5665',
      monthyear: '12,24',
      numbercard: '***12455',
      Color: Colors.blue,
       Image: ('assets/images/visa1.png'),
      ),
        mycard(
      name: 'Balance',
      balance: '154,5665',
      monthyear: '12,24',
      numbercard: '***12455',
      Color: Colors.amber,
       Image: ('assets/images/visa1.png'),
      )
];
