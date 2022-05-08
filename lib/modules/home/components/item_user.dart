import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import 'my_space.dart';

Widget itemUser(context) {
  return Card(
    child: Container(
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(3),
      ),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset(""),
              radius: 27,
            ),
            mySpace(width: 20.0),
            const Expanded(child: Text("Name Of User ")),
          ],
        ),
      ),
    ),
  );
}
