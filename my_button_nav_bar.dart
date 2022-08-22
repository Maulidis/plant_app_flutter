import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MyButtonNavBar extends StatelessWidget {
  const MyButtonNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefautPading * 2,
        right: kDefautPading * 2,
        // bottom: kDefautPading,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.35),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         IconButton(
           icon: SvgPicture.asset("assets/icons/home.svg"),
           onPressed: () {},
         ),
         IconButton(
            icon: SvgPicture.asset("assets/icons/add.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/profil.svg"),
            onPressed: () {},
          ), 
        ],
      ),
    );
  }
}
