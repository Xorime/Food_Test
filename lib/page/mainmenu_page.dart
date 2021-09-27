import 'package:flutter/material.dart';
import 'package:food_test/page/categories_page.dart';
import 'package:food_test/page/favorite_page.dart';
import 'package:food_test/page/random_page.dart';

class MenusTile {
  MenusTile({
    required this.name,
    required this.function,
  });

  String name;
  final VoidCallback function;
}

List<MenusTile> _menusTileList(BuildContext context) {
  return <MenusTile>[
    MenusTile(
      name: 'List All Meal Categories',
      function: () {
        Navigator.of(context).push(MaterialPageRoute<dynamic>(builder: (BuildContext context) => CategoriesPage()));
      },
    ),
    MenusTile(
        name: 'Random Meal',
        function: () {
          Navigator.of(context).push(MaterialPageRoute<dynamic>(builder: (BuildContext context) => RandomPage()));
        }),
  ];
}

Widget _buildMenusTileList(MenusTile menusTile) {
  return InkWell(
    onTap: menusTile.function,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                menusTile.name,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

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
        title: Text(
          'Select your food',
          style: TextStyle(color: Colors.white),
        ),
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(8),
                ),
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
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _menusTileList(context).length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildMenusTileList(_menusTileList(context)[index]);
                    },
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
