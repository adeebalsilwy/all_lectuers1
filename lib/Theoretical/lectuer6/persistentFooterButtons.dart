// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ElvatidButtonExm extends StatefulWidget {
  const ElvatidButtonExm({Key? key}) : super(key: key);
  static const rout_name = '/ElvatidButtonExm';

  @override
  _ElvatidButtonExmState createState() => _ElvatidButtonExmState();
}

class _ElvatidButtonExmState extends State<ElvatidButtonExm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: null,
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20.0),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20.0),
          ),
          child: const Icon(
            Icons.update,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20.0),
          ),
          child: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20.0),
          ),
          child: const Icon(
            Icons.save_alt,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
