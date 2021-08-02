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
          body: ListView(
            children: [
              ListWidget(),
              ButtonRowSection()
            ],
          )
        ),
      );
  }
}

class ButtonRowSection extends StatelessWidget {
  ButtonRowSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BottomNavColumn(Icons.weekend_outlined),
        BottomNavColumn(Icons.perm_contact_cal_outlined),
        BottomNavColumn(Icons.search)
      ],
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
        Icon(icon, color: Colors.green),
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
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: vibes.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
          )
        );
      },
    );
  }
}
