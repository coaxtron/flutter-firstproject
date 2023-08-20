import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({ super.key });

  @override
 _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        
        children: [
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
      );
  }
}