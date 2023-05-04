import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List View',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> items = [
    {'name': 'Desktop', 'icon': Icons.computer, 'price': 200.0},
    {'name': 'Smart Phone', 'icon': Icons.smartphone, 'price': 1000.0},
    {'name': 'Cable', 'icon': Icons.cable, 'price': 10.0},
    {'name': 'Mouse', 'icon': Icons.mouse, 'price': 200.0},
    {'name': 'Smart Screen', 'icon': Icons.smart_screen, 'price': 200.0},
    {'name': 'Tablet', 'icon': Icons.tablet_mac, 'price': 1000.0},
    {'name': 'Camera', 'icon': Icons.camera_alt, 'price': 1000.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('{ } List of Items'),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('images/IMG_20221017_014454_443.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Center(
                      child: Text(
                        'Amanuel Tefera',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'amanueltefera11@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                  iconColor: Colors.black,
                  onTap: () {}),
              ListTile(
                leading: Icon(Icons.data_object),
                title: Text("Item"),
                iconColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                iconColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                iconColor: Colors.black,
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  item['icon'],
                  color: Colors.black,
                ),
                title: Text(item['name'], selectionColor: Colors.black),
                subtitle: Text('\$${item['price']}'),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            );
          },
        ));
  }
}
