import 'package:flutter/material.dart';
import 'package:food_test/page/categories_page.dart';
import 'package:food_test/page/favorite_page.dart';

// ignore: use_key_in_widget_constructors
class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('This'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 12.0,
              top: 8,
              bottom: 8,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(8),
              focusColor: Colors.white,
              child: Column(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('Favorites')
                ],
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/savo2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
                  },
                  child: Card(
                    color: Colors.grey,
                    child: ListTile(
                      title: Center(
                          child: Text(
                        'List all meal categories',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
