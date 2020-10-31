import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/models/Product.dart';

import 'cart_counter.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'product_title_with_image.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        return SingleChildScrollView(
         child: Column(
           children: <Widget>[
             SizedBox(
               height: size.height,
               child: Stack(
                 children: <Widget>[
                   Container(
                     margin: EdgeInsets.only(top: size.height *0.3 ),
                     padding: EdgeInsets.only(top: size.height * 0.12, 
                     left: kDefaultPaddin, 
                     right: kDefaultPaddin,
                     ),
                    // height:500,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(24),
                       topRight: Radius.circular(24),
                     )
                   ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColorAndSize(product: product),
                        Description(product: product),
                        CartCounter(),
                      ],
                    ),
                   ),
                   ProductTitleWithImage(product: product),
             ],
           ),
         )
       ],
       ), 
    );
  }
}

