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
          title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
            )
          ),
        ),
        body: ListWidget(),
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
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vibes.length,
      itemBuilder: (context, index) {
        return ListTile(
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
        );
      },
    );
  }
}
