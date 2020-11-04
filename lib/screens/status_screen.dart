import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  DateTime now = DateTime.now();
  List<String> names = [
    'jamal',
    'mohamed',
    'Ahmed',
    'sayed',
    'mostafa',
    'mohsen'
  ];
  List<String> text = [
    'hello',
    'hola',
    'hi',
    'Where are you',
    'I\'m waiting',
    'hi'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/man.jpeg'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap To Add Status'),
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.grey[200],
            child: Text(
              '  Recent Update',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/man.jpeg'),
                        ),
                        title: Text(names[index]),
                        subtitle: Text(text[index]),
                      ),
                      Divider(),
                    ],
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.photo_camera),
        onPressed: () {},
      ),
    );
  }
}
