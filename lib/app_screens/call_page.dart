import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({ super.key });

  @override
 _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return   ListView(
          children: [
            ListTile(
              leading: Image.asset('images/page.jpg'),
              title:  const Text('Vikash Kumar'),
              subtitle: const Text('Flutter Developer'),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Image.asset('images/page.jpg'),
              title:  const Text('Vikash Kumar'),
              subtitle: const Text('Flutter Developer'),
              trailing: IconButton(icon: Icon(Icons.delete),  onPressed: () {
              print('secondAction');
    }),
            ),
            ListTile(
              leading: Image.asset('images/page.jpg'),
              title:  const Text('Vikash Kumar'),
              subtitle: const Text('Flutter Developer'),
              trailing: Icon(Icons.delete),
            )
          ],
         );
  }
}