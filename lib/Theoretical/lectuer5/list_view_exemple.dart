// ignore_for_file: must_be_immutable, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:all_lectuers1/product.dart';

class GridView_builder_Roq_EX extends StatelessWidget {
  static const rout_name = '/GridView_builder_Roq_EX';

  List<Product> allprodct = products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GridView.builder Roq App"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
                itemCount: allprodct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 7.0,
                    mainAxisSpacing: 7.0),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(allprodct[index].image));
                })));
  }
}
