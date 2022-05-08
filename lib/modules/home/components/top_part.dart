import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

Widget topPart(context) {
  return Card(
    child: Container(
      decoration: BoxDecoration(
        color: MyColors.myDark,
      borderRadius: BorderRadius.circular(10),),
      width: MediaQuery.of(context).size.width,
      height: 80,

      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Row(
          children: [
            const Expanded(
                child: Text(
                  "Zahran IT Team ",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                )),

          ],
        ),
      ),
    ),
  );
}
