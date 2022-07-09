import 'package:flutter/material.dart';


class List extends StatelessWidget {
  final String image;
  final String text1;
  final String Text2;
  const List(
      {Key? key, required this.image, required this.text1, required this.Text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                ),
                height: 80,
                child: Image.asset(image),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    Text2,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
