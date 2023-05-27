import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ex6_3 extends StatelessWidget {
  const ex6_3({Key? key}) : super(key: key);
  static const rout_name = "/ex6_3";

  @override
  Widget build(BuildContext context) {
    return const DialogSamples_hq();
  }
}

class DialogSamples_hq extends StatefulWidget {
  const DialogSamples_hq({Key? key}) : super(key: key);

  @override
  State<DialogSamples_hq> createState() => _DialogSamples_hqState();
}

class _DialogSamples_hqState extends State<DialogSamples_hq> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF666666)),
          title: Text("Dialogs Samples deebo",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Color(0xFF666666))),
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (String value) {},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            ),
          ],
          systemOverlayStyle: SystemUiOverlayStyle.light),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => SingleChoiceDialog());
                },
                child: buildUI_hq(typeDialog: "Single Choice Dialog")),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => MultiChoiceDialogState());
                },
                child: buildUI_hq(typeDialog: "Multi Choice Dialog")),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomEventDialog());
                },
                child: buildUI_hq(typeDialog: "Info Dialog")),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => CustomEventDialogStateW());
                },
                child: buildUI_hq(typeDialog: "Waring Dialog")),
            GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (_) => AddPostDialog());
                },
                child: buildUI_hq(typeDialog: "Add Review Dialog")),
          ],
        ),
      ),
    );
  }
}

class buildUI_hq extends StatelessWidget {
  const buildUI_hq({Key? key, required this.typeDialog}) : super(key: key);
  final String typeDialog;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF534D4D),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(this.typeDialog,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF403D3D),
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
        ),
      ),
    );
  }
}

class SingleChoiceDialog extends StatefulWidget {
  const SingleChoiceDialog({Key? key}) : super(key: key);

  @override
  State<SingleChoiceDialog> createState() => _SingleChoiceDialogState();
}

class _SingleChoiceDialogState extends State<SingleChoiceDialog> {
  String selectedRingtone = "None";
  List<String> ringtone = ["None", "Callisto", "Ganymede", "Luna"];
  @override
  Widget build(BuildContext context) {
    return new SimpleDialog(
      title: new Text("Phone Ringtone"),
      children: ringtone
          .map((r) => RadioListTile(
                title: Text(r),
                groupValue: selectedRingtone,
                selected: r == selectedRingtone,
                value: r,
                onChanged: (String? val) {
                  setState(() {
                    selectedRingtone = val!;
                  });
                },
              ))
          .toList(),
    );
  }
}

class MultiChoiceDialogState extends StatefulWidget {
  const MultiChoiceDialogState({Key? key}) : super(key: key);

  @override
  State<MultiChoiceDialogState> createState() => _MultiChoiceDialogStateState();
}

class _MultiChoiceDialogStateState extends State<MultiChoiceDialogState> {
  List<String> colors = ["Red", "Green", "Blue", "Purple", "Olive"];
  List<bool> status = [false, false, false, false, false];
  bool getValue(String val) {
    int index = colors.indexOf(val);
    if (index == -1) return false;
    return status[index];
  }

  void toggleValue(String name) {
    int index = colors.indexOf(name);
    if (index == -1) return;
    status[index] = !status[index];
  }

  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text("Your prefered color"),
      contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 0),
      content: Wrap(
        direction: Axis.vertical,
        children: colors
            .map((c) => InkWell(
                  child: Row(
                    children: <Widget>[
                      Checkbox(value: getValue(c), onChanged: (value) {}),
                      Text(c),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      toggleValue(c);
                    });
                  },
                ))
            .toList(),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class CustomEventDialog extends StatefulWidget {
  const CustomEventDialog({Key? key}) : super(key: key);

  @override
  State<CustomEventDialog> createState() => _CustomEventDialogState();
}

class _CustomEventDialogState extends State<CustomEventDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.lightGreen[400],
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Icon(Icons.verified_user, color: Colors.white, size: 80),
                    Container(height: 10),
                    Text("Account confirmed!",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.white)),
                    Container(height: 10),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Color(0xFF666666))),
                    Container(height: 10),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)),
                        backgroundColor: Colors.lightGreen[500],
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomEventDialogStateW extends StatefulWidget {
  const CustomEventDialogStateW({Key? key}) : super(key: key);

  @override
  State<CustomEventDialogStateW> createState() =>
      _CustomEventDialogStateWState();
}

class _CustomEventDialogStateWState extends State<CustomEventDialogStateW> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.red[300],
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Icon(Icons.cloud_off, color: Colors.white, size: 80),
                    Container(height: 10),
                    Text("No internet !",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.white)),
                    Container(height: 10),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Color(0xFF666666))),
                    Container(height: 10),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)),
                        backgroundColor: Colors.red[300],
                      ),
                      child: Text(
                        "Retry",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddPostDialog extends StatefulWidget {
  const AddPostDialog({Key? key}) : super(key: key);

  @override
  State<AddPostDialog> createState() => _AddPostDialogState();
}

class _AddPostDialogState extends State<AddPostDialog> {
  double ratingValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/camera.png"),
                        ),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("David Park",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          color: Color(0xFF263238),
                                          fontWeight: FontWeight.bold)),
                              Container(height: 5),
                              Text("Customer services",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(color: Color(0xFF999999))),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(height: 5),
                    Divider(),
                    Container(height: 5),
                    RatingBar.builder(
                      initialRating: 1,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 30,
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {
                          ratingValue = rating;
                          print(rating);
                        });
                      },
                    ),
                    Container(height: 15),
                    Container(
                      color: Color(0xFFf7f7E7),
                      height: 80,
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      child: TextField(
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write review',
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new TextButton(
                    child: Text("CLOSE"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.pink[500],
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child:
                        Text("SUBMIT", style: TextStyle(color: Colors.black)),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
