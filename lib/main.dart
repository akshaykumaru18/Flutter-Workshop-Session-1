import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
            actions: const [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.message),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.more_vert),
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(child: Text("CHATS"),),
                Tab(child: Text("STATUS"),),
                Tab(child: Text("CALLS"),),
              ],
            ),
          ),
          body: TabBarView(
              children: [
              ListView.builder(itemBuilder: (context, index) {
      return ListTile(
      leading: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Image.network("https://media.licdn.com/dms/image/D5603AQH0mo_-M69Dwg/profile-displayphoto-shrink_800_800/0/1670061543237?e=2147483647&v=beta&t=dQWhy8jnREfhu2OwAxD6ZeF0tvzLThK86tYhvlrSxVU"),
      ),
      title: Text(
      "Person $index",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      subtitle: Text(
      "message $index",
      style: TextStyle( fontSize: 18,color: Colors.grey),
      ),
      trailing: Column(
      children: [
      Text("11:11",style: TextStyle(color: Colors.green,fontSize: 14),),
      CircleAvatar(
      backgroundColor: Colors.green,
      radius: 10,
      child: Text("1",style: TextStyle(color: Colors.white,fontSize: 14),))
      ],
      ),
      );
      }),
      Center(
        child: Text("STATUS",
          style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text("CALLS",
            style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),

      ),
    )],
    )
    )
    ,
    );
  }
}
