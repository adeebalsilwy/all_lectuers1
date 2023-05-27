import 'package:flutter/material.dart';

class ex5_4 extends StatefulWidget {
  const ex5_4({Key? key}) : super(key: key);
  static const rout_name = "/ex5_4";

  @override
  State<ex5_4> createState() => _ex5_4State();
}

class _ex5_4State extends State<ex5_4> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller) {
          return <Widget>[
            SliverAppBar(
              title: Text('Store Roq App'),
              pinned: true,
              floating: true,
              backgroundColor: Colors.pink,
              leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                PopupMenuButton<String>(
                  onSelected: (String value) {},
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: "Settings",
                      child: Text("Settings"),
                    ),
                    PopupMenuItem(
                      value: "help",
                      child: Text("Help"),
                    ),
                    PopupMenuItem(
                      value: "about",
                      child: Text("About"),
                    ),
                  ],
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                labelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white),
                unselectedLabelColor: Colors.grey[300],
                tabs: [
                  Tab(text: "MUSIC", icon: Icon(Icons.music_note)),
                  Tab(text: "MOVIE", icon: Icon(Icons.ondemand_video)),
                  Tab(text: "BOOKS", icon: Icon(Icons.book)),
                  Tab(text: "Games", icon: Icon(Icons.games)),
                  Tab(
                      text: "Sport",
                      icon: Icon(Icons.sports_baseball_outlined)),
                  Tab(text: "Info", icon: Icon(Icons.info)),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            Align(child: Text("MUSIC : 1", style: MyText.display1(context))),
            Align(child: Text("MOVIE : 2", style: MyText.display1(context))),
            Align(child: Text("BOOKS : 3", style: MyText.display1(context))),
            Align(child: Text("Games : 4", style: MyText.display1(context))),
            Align(child: Text("Sport : 5", style: MyText.display1(context))),
            Align(child: Text("Info : 6", style: MyText.display1(context))),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

class MyText {
  static TextStyle? display1(BuildContext context) {
    return Theme.of(context).textTheme.headline4;
  }
}
