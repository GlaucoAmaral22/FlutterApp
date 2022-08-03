import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selecteIndex = 0;

  void getSelectedIndex(int selecteIndex) {
    setState(() {
      _selecteIndex = selecteIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyScaffold(_selecteIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu")
        ],
        selectedItemColor: Colors.blue,
        onTap: getSelectedIndex,
        currentIndex: _selecteIndex,
      ),
    );
  }
  
  Container bodyScaffold(int selecteIndex) {
    var pages = [
      Container(color: Colors.blue,),
      Container(color: Colors.green,),
    ];
    return pages[selecteIndex];
  }
}
