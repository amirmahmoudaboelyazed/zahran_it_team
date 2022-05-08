import 'package:flutter/material.dart';

import 'item_user.dart';

Widget listOfUsersView({myContext,function}){

  return Expanded(
    child: ListView.builder(
      physics:const BouncingScrollPhysics() ,
        itemCount: 20,
        itemBuilder: ((context, index) {
      return itemUser(myContext,function);

    })),
  );
}