import 'package:flutter/material.dart';
import 'package:myapp/home.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final PageController _controller = PageController(initialPage: 0);
  final ScrollController _scroller = ScrollController();
  @override
  void dispose() {
    _scroller.dispose();
    super.dispose();
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('First Flutter'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        backgroundColor: const Color.fromRGBO(249, 190, 124, 1),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   shape: const CircleBorder(),
      //   tooltip: 'Click button to add card',
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: const IconThemeData(
          color: Color.fromRGBO(202, 205, 219, 1),
        ),
        onTap: (index) {
          _controller.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.bounceInOut);
        },
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_filled),
              tooltip: 'Home',
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search_off),
              tooltip: 'Search',
              icon: Icon(Icons.search),
              label: 'Search'),
          BottomNavigationBarItem(
              tooltip: 'Settings',
              icon: Icon(Icons.settings),
              label: 'Settings'),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(249, 190, 124, 1),
        width: 200,
        child: ListView(children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('User '),
            onTap: () {},
          )
        ]),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        onPageChanged: (value) => {print(value)},
        children: [
          HomeScreen(controller: _controller),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
