// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_freebies/constants.dart';
import 'package:plant_app_freebies/screens/home/components/Title_more_btn.dart';

import 'header_with_seachbox.dart';
import 'indefity.dart';
import 'plant_types.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     margin: EdgeInsets.only(bottom: kDefautPading * 0.0);
     Size size =MediaQuery.of(context).size;
     return SingleChildScrollView(

       child: Column(

        children: <Widget>[
           HeaderWithSearchBox(size: size),
           Container(


           ),
           indefity(title: "",),

           Container(
            height: 24,
            child: Stack(children: <Widget>[
              Text(
                "Plant Types",
                style: TextStyle(fontSize: 20),
              )
            ]),
          ),
         

           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
               children: <Widget>[
                 featurPlant(image: "assets/images/bottom_img_1.png",
                 press: (){},
                 ),
                 Row(
                 children: <Widget>[
                 featurPlant(image: "assets/images/bottom_img_2.png",
                 press: (){},
                 ), 
               ],
                 ), 
               ], 
             ),
           ), 
          photo(),
           PhotographyPlant(

           ),

           plant_types(size: size),        
           
         ],
       ),
     );
     
     

 }
}

class PhotographyPlant extends StatelessWidget {
  const PhotographyPlant({
    Key? key,

  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
     margin: EdgeInsets.only(left: kDefautPading, 
     top: kDefautPading /2,
     bottom: kDefautPading * 2.5,),
     width: size.width * 0.4,
     child: Column(
       children: <Widget>[
         Image.asset("assets/images/image_1.png",
         ),
         Container(
           padding: EdgeInsets.all(kDefautPading / 2),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(10),
               bottomRight: Radius.circular(10),
             
             ),
             color: Colors.white,
             boxShadow: [
               BoxShadow(offset: Offset(0, 10),
               blurRadius: 50,
               color: kPrimaryColor.withOpacity(0.23),
               ),
               ],
               ),
               child: Row(
                 children: <Widget>[
                   Row(
                     children: [
                       RichText(text: TextSpan(
                         children: [TextSpan(
                           text: "premium".toUpperCase() ,
                           style: Theme.of(context).textTheme.button
                           ),
                           //
                         ],
                         ),
                         ),
                     ],
                   ),
                     ],
               ),
         ), 
       ],
     ),
          );
  }
}

class photo extends StatelessWidget {
  const photo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Stack(children: <Widget>[
        Text(
          "Photography",
          style: TextStyle(fontSize: 20),
        )
      ]),
    );
  }
}




