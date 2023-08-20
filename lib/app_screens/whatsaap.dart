import 'package:firstproject/app_screens/call_page.dart';
import 'package:firstproject/app_screens/chat_page.dart';
import 'package:firstproject/app_screens/status_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin { 
     TabController? _tabController;

  final List<Tab> topTabs = <Tab>[
    Tab(icon: const Icon(Icons.camera_alt)),
    Tab(text: 'CHATS',),
    Tab(text: 'STATUS',),
    Tab(text: 'CALLS',),

  ];


final List<Widget> tabPages = <Widget>[
  Icon(Icons.camera_alt), // Replace with your camera content
  ChatPage(),  // Your ChatPage content
  StatusPage(),// Replace with your StatusPage content
  CallPage(),  // Replace with your CallsPage content
];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
    ..addListener(() {
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () {
            print('Search Working');
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: () {
            print('Three dot');
          }, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          tabs: topTabs,
          controller: _tabController,
        ),
        
      ),
 
      body: TabBarView(
        controller: _tabController,
        children: tabPages
      )
    );
  }
}