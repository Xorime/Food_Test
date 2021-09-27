import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_test/data/moor_database.dart';
import 'package:food_test/widgets/new_favorite_input_widget.dart';
import 'package:provider/provider.dart';

class FavoriteRunner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AppDatabase(),
      child: MaterialApp(
        title: 'This',
        home: FavoritePage(),
      ),
    );
  }
}

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('This'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildFavoriteList(context)),
            NewFavoriteInput(),
          ],
        ));
  }

  StreamBuilder<List<Favorite>> _buildFavoriteList(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllFavorites(),
      builder: (context, AsyncSnapshot<List<Favorite>> snapshot) {
        final favorites = snapshot.data ?? [];

        return ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (_, index) {
            final itemFavorite = favorites[index];
            return _buildListItem(itemFavorite, database);
          },
        );
      },
    );
  }

  Widget _buildListItem(Favorite itemFavorite, AppDatabase database) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => database.deleteFavorite(itemFavorite),
        )
      ],
      child: CheckboxListTile(
        title: Text(itemFavorite.name),
        subtitle: Text(itemFavorite.category.toString()),
        value: itemFavorite.completed,
        onChanged: (newValue) {
          database.updateFavorite(itemFavorite.copyWith(completed: newValue));
        },
      ),
    );
  }
}
