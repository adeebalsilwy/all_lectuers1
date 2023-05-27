import 'package:flutter/material.dart';

import '../../product.dart';

class GridViewImage extends StatelessWidget {

  const GridViewImage() ;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisExtent: 2,
          ),

          itemBuilder:(BuildContext context,int index){
            return Container(
              padding: EdgeInsets.all(5),
              color: Colors.lightBlueAccent,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(products[index].image),
                ),
              ),

            );
          }),
    );
  }
}
