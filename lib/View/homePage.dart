import 'package:flutter/material.dart';
//import 'package:shop_management/theme/theme.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 List<BottomNavigationBarItem> _item=[];
  int id = 0;
  String value = '';
 
  @override
  // void initState() {
  //   super.initState();
  //   _item = new List[];
  //   _item.add(BottomNavigationBarItem(
  //       icon: Icon(
  //         Icons.production_quantity_limits,
  //         color: LightColorScheme.secondary,
  //       ),
  //       title: Text('Produit')));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text('Home page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _item,
        currentIndex: id,
        onTap: (int item) {
          setState(() {
            id = item;
            value = 'clique ${id.toString()}';
          });
        },
      ),
    );
  }
}
