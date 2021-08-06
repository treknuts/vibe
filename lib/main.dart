import 'package:flutter/material.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  // Application root
  @override
  Widget build(BuildContext context) {
    final title = 'Vibe';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        // The theme of your application.
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 160.0,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 56.0, left: 4.0, bottom: 4.0),
                child: Stack(
                  children: [
                    Positioned.directional(
                        textDirection: TextDirection.ltr,
                        child: Image(image: AssetImage("assets/icon/vibe-icon.png"))
                    )
                  ],
                ),
              ),
            ),
            ListWidget(),
          ],
        )
      ),
    );
  }
}

class ListWidget extends StatefulWidget {

  ListWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  int selectedIndex = -1;

  List<Map<String, dynamic>> vibes = [
    {
      'index': 0,
      'title': 'Chill',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 1,
      'title': 'Busy',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 2,
      'title': 'Karen',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 3,
      'title': 'Steakhouse',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 4,
      'title': 'Lit',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 5,
      'title': 'Florida',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 6,
      'title': 'Preppy',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 7,
      'title': 'Low-key',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 8,
      'title': 'Neatural',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 9,
      'title': 'Hipster',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 10,
      'title': 'Cringe',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 11,
      'title': 'Vibez',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    },
    {
      'index': 12,
      'title': 'Loud',
      'icon': Icon(Icons.arrow_right_sharp),
      'selected': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                child: ListTile(
                    leading: vibes[index]['icon'],
                    title: Text(
                      vibes[index]['title'],
                      style: index == selectedIndex ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
                    ),
                    selected: index == selectedIndex,
                    selectedTileColor: index.isEven ? Colors.blue : Colors.orange,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
              );
            },
          childCount: vibes.length,
        )
    );
  }
}
