import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Animate_a_Widget_Across_Screens_Roq_Ex2());
}

class Animate_a_Widget_Across_Screens_Roq_Ex2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Hero Roq App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({this.title = 'Hero Roq App'});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imagesVisible = true;

  var cardContent = [];

  @override
  void initState() {
    var ran = Random();
    var tag = 0;

    for (var i = 0; i < 5; i++) {
      String heading = '\$${(ran.nextInt(20) + 15).toString()}00 per month';
      var subheading =
          '${(ran.nextInt(3) + 1).toString()} bed, ${(ran.nextInt(2) + 1).toString()} bath, ${(ran.nextInt(10) + 7).toString()}00 sqft';
      var cardImage = NetworkImage(
          'https://source.unsplash.com/random/800x600?house&' +
              ran.nextInt(100).toString());
      var supportingText =
          'Beautiful home, recently refurbished with modern appliances...';
      var cardData = {
        'heading': heading,
        'subheading': subheading,
        'cardImage': cardImage,
        'supportingText': supportingText,
        'tag': (tag++).toString(),
      };
      cardContent.add(cardData);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        drawer: _buildDrawer(context));
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
            ),
            accountEmail: Text('ruqaih.doe@example.com'),
            accountName: Text(
              'Ruqaih Salman',
              style: TextStyle(fontSize: 24.0),
            ),
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.house),
            title: const Text(
              'Houses',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MyHomePage(
                    title: 'Houses',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.apartment),
            title: const Text(
              'Apartments',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MyHomePage(
                    title: 'Apartments',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.house_outlined),
            title: const Text(
              'Townhomes',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MyHomePage(
                    title: 'Townhomes',
                  ),
                ),
              );
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text(
              'Favorites',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MyHomePage(
                    title: 'Favorites',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.black45,
        title: Text(widget.title),
        actions: [
          Switch(
            value: imagesVisible,
            activeColor: Colors.yellowAccent,
            onChanged: (bool switchState) {
              setState(() {
                imagesVisible = switchState;
              });
            },
          ),
        ]);
  }

  Container _buildBody() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:
            cardContent.map((cardData) => _buildCard(cardData)).toList(),
          )),
    );
  }

  Card _buildCard(Map<String, dynamic> cardData) {
    var image = Ink.image(
      image: cardData['cardImage']!,
      fit: BoxFit.cover,
    );
    return Card(
        elevation: 4.0,
        child: GestureDetector(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => PropertyDetails(
                  image: image,
                  tag: cardData['tag'],
                  cardData: cardData,
                ),
              ),
            )
          },
          child: Column(
            children: [
              ListTile(
                title: Text(cardData['heading']!),
                subtitle: Text(cardData['subheading']!),
                trailing: const Icon(Icons.favorite_outline),
              ),
              Visibility(
                visible: imagesVisible,
                child: Container(
                  height: 200.0,
                  child: Hero(
                    tag: cardData['tag'],
                    child: Material(child: image),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text(cardData['supportingText']!),
              ),
              ButtonBar(
                children: [
                  TextButton(
                    child: const Text('CONTACT AGENT'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('LEARN MORE'),
                    onPressed: () {/* ... */},
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class PropertyDetails extends StatelessWidget {
  final Widget image;
  final String tag;
  final Map<String, dynamic> cardData;

  const PropertyDetails(
      {Key? key,
        required this.image,
        required this.tag,
        required this.cardData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('Property Details'),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(children: [
      Container(
        height: 400.0,
        child: Hero(
          tag: tag,
          child: Material(child: image),
        ),
      ),
      ListTile(
        title: Text(cardData['heading']!),
        subtitle: Text(cardData['subheading']!),
        trailing: const Icon(Icons.favorite_outline),
      ),
      Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.centerLeft,
        child: Text(cardData['supportingText']!),
      ),
    ]);
  }
}