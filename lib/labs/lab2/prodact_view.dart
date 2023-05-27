// ignore_for_file: non_constant_identifier_names, camel_case_types, use_key_in_widget_constructors, unnecessary_string_interpolations, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';

import '../../product.dart';

class Prodcet_Screen extends StatelessWidget {
  static const rout_name = "/Prodcet_Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            // color: Colors.grey[700],
            padding: const EdgeInsets.all(10),
            height: 200,
            child: Card(
              elevation: 20,
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      products[index].image,
                    ),
                    title: Text(
                      '${products[index].title}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '${products[index].subTitle}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'السعر',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '(${products[index].price})ريال',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'شراء ',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
