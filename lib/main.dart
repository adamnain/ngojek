import 'package:flutter/material.dart';
import 'package:ngojek/pages/account.dart';
import 'package:ngojek/pages/chat.dart';
import 'package:ngojek/pages/home.dart';
import 'package:ngojek/pages/inbox.dart';
import 'package:ngojek/pages/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ngojek',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'ngojek'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [
    Home(),
    Orders(),
    Chat(),
    Inbox(),
    Account(),
  ];

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/home.png', scale: 3,),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/home-non.png', scale: 3,),
              ),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/orders.png', scale: 2.5,),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/orders-non.png', scale: 2.5,),
              ),
              title: Text('Orders')
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/chat.png', scale: 2.5,),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/chat-non.png', scale: 2.5,),
              ),
              title: Text('Chat')
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/inbox.png', scale: 2.5,),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/inbox-non.png', scale: 2.5,),
              ),
              title: Text('Inbox')
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/account.png', scale: 2.5,),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/account-non.png', scale: 2.5,),
              ),
              title: Text('Account')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
