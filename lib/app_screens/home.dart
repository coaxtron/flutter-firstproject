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
      //   body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: ListView(
      //     children: [
      //       Image(image: AssetImage('images/page.jpg'), fit: BoxFit.cover,),
      //       Image(image: NetworkImage('https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'))
      //     ],
      //   )
      // ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        
        children: [
         
    //      ListView(
    //       children: [
    //         ListTile(
    //           leading: Image.asset('images/page.jpg'),
    //           title:  const Text('Vikash Kumar'),
    //           subtitle: const Text('Flutter Developer'),
    //           trailing: Icon(Icons.delete),
    //         ),
    //         ListTile(
    //           leading: Image.asset('images/page.jpg'),
    //           title:  const Text('Vikash Kumar'),
    //           subtitle: const Text('Flutter Developer'),
    //           trailing: IconButton(icon: Icon(Icons.delete),  onPressed: () {
    //           print('secondAction');
    // }),
    //         ),
    //         ListTile(
    //           leading: Image.asset('images/page.jpg'),
    //           title:  const Text('Vikash Kumar'),
    //           subtitle: const Text('Flutter Developer'),
    //           trailing: Icon(Icons.delete),
    //         )
    //       ],
    //      ),
          const Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1635468872214-8d30953f0057?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGltYWdlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')),
          const Image(
            image: AssetImage('images/page.jpg'),
            fit: BoxFit.cover,
          ),
          const Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60')),
          const Image(
            image: AssetImage('images/page.jpg'),
            fit: BoxFit.cover,
          ),
          const Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60')),
          const Image(
            image: AssetImage('images/page.jpg'),
            fit: BoxFit.cover,
          ),
          const Image(
            image: AssetImage('images/page.jpg'),
            fit: BoxFit.cover,
          ),
          const Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60')),
          const Image(
            image: AssetImage('images/page.jpg'),
            fit: BoxFit.cover,
          ),
          const Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60')),
          const Image(
            image: AssetImage('images/page.jpg'),
            fit: BoxFit.cover,
          ),
          const Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60')),
          const Image(
            image: AssetImage('images/page.jpg'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}