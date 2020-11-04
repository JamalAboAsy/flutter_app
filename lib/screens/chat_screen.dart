import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  DateTime now = DateTime.now();
  List<String> names = ['jamal', 'mohamed', 'Ahmed','sayed', 'mostafa', 'mohsen','Ahmed','sayed', 'mostafa', 'mohsen',];
  List<String> text = ['hello', 'hola', 'hi','Where are you', 'I\'m waiting', 'hi','Where are you', 'I\'m waiting', 'hi','hi'];
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
                  Text('10.48 PM'
                  //    '${now.hour.toString()} : ${now.minute.toString()} PM',
                  ),
                ),
                Divider(),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.message),
        onPressed: (){},
      ),
    );
  }
}
