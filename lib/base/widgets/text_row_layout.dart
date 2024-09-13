import 'package:flutter/material.dart';

class TextLayoutRow extends StatelessWidget {
  const TextLayoutRow({super.key, required this.bigText, required this.smallText});

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return
       Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF3b3b3b)),
          ),
          InkWell(
            onTap: (){},
            child:  Text(
              smallText,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3b3b3b)),
            ) ,
          )

        ],
      );

  }
}
