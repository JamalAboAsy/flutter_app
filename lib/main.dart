import 'package:flutter/material.dart';
import 'file:///C:/Users/Gamal/AndroidStudioProjects/flutter_app/lib/screens/calls_screen.dart';
import 'file:///C:/Users/Gamal/AndroidStudioProjects/flutter_app/lib/screens/status_screen.dart';

import 'screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFF075e54),
                pinned: true,
                title: Text('Whats App'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ],
                bottom: TabBar(
                  indicatorWeight: 5.0,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                    Tab(
                      text: 'Chats',
                    ),
                    Tab(text: 'Status'),
                    Tab(text: 'Calls'),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              Text('Camera'),
              Chats(),
              Status(),
             Calls(),
            ],
          ),
        ),
      ),
    );
  }
}

