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
        appBar: AppBar(
          title: Center(
            child: Text(title, style: TextStyle(color: Colors.white))
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListWidget(),
            ),
          ],
        ),
        bottomNavigationBar: ButtonRowSection(),
      ),
    );
  }
}

class ButtonRowSection extends StatelessWidget {
  ButtonRowSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavColumn(Icons.weekend),
            BottomNavColumn(Icons.perm_contact_cal),
            BottomNavColumn(Icons.add_circle_rounded)
          ],
        ),
      ),
    );
  }
}

class BottomNavColumn extends StatelessWidget {
  BottomNavColumn(this.icon);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icon, color: Colors.white),
      ],
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
    'title': 'Loud',
    'icon': Icon(Icons.arrow_right_sharp),
    'selected': false,
  },
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: vibes.length,
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            shadowColor: Colors.brown,
            child: ListTile(
              leading: vibes[index]['icon'],
              title: Text(
                vibes[index]['title'],
                style: index == selectedIndex ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
              ),
              selected: index == selectedIndex,
              selectedTileColor: index % 2 == 0 ? Colors.blue : Colors.orange,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
          decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black45,
                blurRadius: 20.0,
                spreadRadius: 1.0,
              ),
            ]
          ),
        );
      },
    );
  }
}
