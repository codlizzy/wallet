import 'package:flutter/material.dart';


class Iconcard extends StatelessWidget {
  final iconimage;
  final texticon;
  const Iconcard({Key? key, this.iconimage, this.texticon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 2,
                  blurRadius: 50,
                )
              ]),
          child: Center(child: Image.asset(iconimage)),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          texticon,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
