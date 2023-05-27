/*
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:multi_image_picker/multi_image_picker.dart';


void main() => runApp(new ImagePicker_Multi_Roq_Ex());

class ImagePicker_Multi_Roq_Ex extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<ImagePicker_Multi_Roq_Ex> {
  //List<Asset> images = List<Asset>();  ERRRROR
  List<Asset> images = <Asset>[];
 /* List<int> foo = <int>[];           // Always the recommended way.
  var bar = List.filled(1, 0); // Not filled with `null`s.
  var baz = List<int>.empty(); */


  @override
  void initState() {
    super.initState();
  }

  Future<void> pickImages() async {
    List<Asset> resultList = <Asset>[];

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        materialOptions: MaterialOptions(
          actionBarTitle: "By Ruqaih Salman",
        ),
      );
    } on Exception catch (e) {
      print(e);
    }

    setState(() {
      images = resultList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Multi Image Picker Roq App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Pick images"),
              onPressed: pickImages,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(images.length, (index) {
                  Asset asset = images[index];
                  return AssetThumb(
                    asset: asset,
                    width: 300,
                    height: 300,
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

*/////////////////////////////////////





/*Short answer:
Instead of the pre-null-safety operations

var foo = List<int>();  // Now error
var bar = List<int>(n); // Now error
var baz = List<int>(0); // Now error
use the following:

var foo = <int>[];           // Always the recommended way.
var bar = List.filled(1, 0); // Not filled with `null`s.
var baz = List<int>.empty();
Long answer:
The List constructor had two uses:

new List() to create an empty growable list, equivalent to [].
new List(n) to create a fixed-length list of length n filled with null values
With null safety, the second use was unsound most of the time, and there was no good way to fix it. It's possible to force a type argument to be non-nullable, but List<T>(4) only works when T is nullable. There is no way to enforce that.

So, the List(n) mode needed to go (replaced by List.filled(n, value) which forces you to provide a fill-value). That left List(), which doesn't really carry its own weight. You can just use [] instead (and you should!), so it was decided to remove the constructor entirely - all uses of it was either unsafe or useless. (Also, it was a weird constructor already, because if we wanted to properly make it null safe, it would have an optional parameter with a non-nullable type and no default value.)*/