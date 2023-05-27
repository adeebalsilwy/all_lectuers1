// ignore_for_file: prefer_const_constructors, camel_case_types, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class LIst_view_tile extends StatelessWidget {
  const LIst_view_tile({super.key});
  static const rout_name = "/LIst_view_tile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/a.PNG',
                  height: 50,
                  fit: BoxFit.fill,
                  width: 50,
                ),
              ),
              Container(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Flutter Guid Deebo',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.grey[80])),
                  Container(
                    height: 2,
                  ),
                  Text('adeeb@gmail.com',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                          )),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 8,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.info,
                  color: Colors.grey[40],
                ),
                Container(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Virson",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[60],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      height: 2,
                    ),
                    Text(
                      "0.0.0.0.1",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[60],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.grey[40],
                ),
                Container(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rate App",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[60],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      height: 2,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.grey[40],
                ),
                Container(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Share App",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[60],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      height: 2,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.book,
                  color: Colors.grey[40],
                ),
                Container(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "License",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[60],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      height: 2,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.lock_open,
                  color: Colors.grey[40],
                ),
                Container(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get Pro_Unlock Everything",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[60],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      height: 2,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.file_download,
                  color: Colors.grey[40],
                ),
                Container(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Donload From GIthub",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[60],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      height: 2,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          elevation: 3,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 6,
                  ),
                  Text(
                    "Author  ",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey[80],
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey[40],
                      ),
                      Container(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Adeeb Ali ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Container(
                            height: 4,
                          ),
                          Text(
                            " Yemen Countery ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.grey[40],
                      ),
                      Container(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Container(
                            height: 4,
                          ),
                          Text(
                            "Adeeb_@gmail.com ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.grey[40],
                      ),
                      Container(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Send Us Feadback ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.grey[40],
                      ),
                      Container(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FOllow Us ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Container(
                            height: 4,
                          ),
                          Text(
                            "Get Lastes Update  ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          elevation: 3,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 6,
                    ),
                    Text(
                      "From Our Apps",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[80],
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.info,
                        color: Colors.grey[80],
                      ),
                      width: 50,
                    ),
                    Container(
                      width: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dart Guide",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            "Comrehebsuve guide to learning Dart ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.install_mobile,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.info,
                        color: Colors.grey[80],
                      ),
                      width: 30,
                    ),
                    Container(
                      width: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Awesome flutter Guide",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            "FLutter widgets plugins animation ui and projects ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.install_mobile,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.info,
                        color: Colors.grey[80],
                      ),
                      width: 30,
                    ),
                    Container(
                      width: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "more Apps ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            " All of fultter in Google play ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.install_mobile,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
