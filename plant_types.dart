import 'package:flutter/material.dart';

import '../../../constants.dart';

class featurPlant extends StatelessWidget {
  const featurPlant({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return photography(size: size, image: image);
  }
}

class photography extends StatelessWidget {
  const photography({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefautPading,
          top: kDefautPading / 1,
          bottom: kDefautPading / 1,
        ),
        width: size.width * 0.8,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),      
      ),
      
    );
  }
}
