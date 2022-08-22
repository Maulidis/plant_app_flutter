import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_freebies/screens/home/components/body.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefautPading * 1.0),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(36),
                  //bottomRight: Radius.circular(36),
                  ),
                  

            ),
            padding: EdgeInsets.only(
              left: kDefautPading,
              right: kDefautPading,
              bottom: 36 + kDefautPading,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi Diss',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
               
                Spacer(),
                Image.asset("assets/images/logome.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefautPading),
              padding: EdgeInsets.symmetric(horizontal: kDefautPading),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        //surffix isn't working properly with SVG
                        //thats why we us row
                        // suffixIcon: SvgPicture.asset('assets/icons/search.svg')),
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/search.svg'),
                
                  

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
