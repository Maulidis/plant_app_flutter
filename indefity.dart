import 'package:flutter/material.dart';
import 'package:plant_app_freebies/screens/home/components/header_with_seachbox.dart';

import '../../../constants.dart';

class indefity extends StatelessWidget {
  const indefity({
    Key? key, required String title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefautPading),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () => {},
            color: Colors.cyan,
            padding: EdgeInsets.all(20.0),
            child: Column(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                Text(
                  "INDEFITY",
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.normal),
                ),
              ],
            ),
          ),
        ),
        Padding(
          
         padding: EdgeInsets.only(
            left: 0 + kDefautPading,
            right: 0 + kDefautPading,
            top: 0 + kDefautPading,
            bottom: 0 + kDefautPading,
          ),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () => {},
            color: Colors.cyan,
            padding: EdgeInsets.all(20.0),
            child: Column(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(
                  Icons.nature_outlined,
                  color: Colors.white,
                ),
                Text(
                  "SPECIES",
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.normal),
                ),
              ],
            ),
          ),
        ),
        Padding(
           padding: EdgeInsets.only(
            left: 0+kDefautPading,
            right: 0 + kDefautPading,
            top: 0 + kDefautPading,
            bottom: 0 + kDefautPading,
          ),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () => {},
            color: Colors.cyan,
            padding: EdgeInsets.all(20.0),
            child: Column(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(
                  Icons.book_outlined,
                  color: Colors.white,
                ),
                Text(
                  "ARTICLES",
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.normal),
                ),
              ],
            ),
            
          ),
        ),
      ],
    );
  }
}

class plant_types extends StatelessWidget {
  const plant_types({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefautPading * 0.0),
      height: size.width * 0.4,
      child: Column(children: <Widget>[

        Row(
          children: [
            
      
      ]
      ),
      ], 
      ),

    );
  }
}


