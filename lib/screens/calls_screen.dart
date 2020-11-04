import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  DateTime now = DateTime.now();
  List<String> names = ['jamal', 'mohamed', 'Ahmed','sayed', 'mostafa', 'mohsen'];
  List<String> text = ['hello', 'hola', 'hi','Where are you', 'I\'m waiting', 'hi'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
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
                  trailing:
                  Icon(Icons.phone,color: Color(0xFF25D366),),
                ),
                Divider(),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.message),
      ),
    );
  }
}

