import 'package:flutter/material.dart';
import 'package:food_test/data/moor_database.dart';
import 'package:provider/provider.dart';

class NewFavoriteInput extends StatefulWidget {
  const NewFavoriteInput({
    Key? key,
  }) : super(key: key);

  @override
  _NewFavoriteInputState createState() => _NewFavoriteInputState();
}

class _NewFavoriteInputState extends State<NewFavoriteInput> {
  late String newCategory;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _buildTextField(context),
          _buildDateButton(context),
        ],
      ),
    );
  }

  int _id = 0;
  Expanded _buildTextField(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: 'Favorite Name'),
        onSubmitted: (inputName) {
          final database = Provider.of<AppDatabase>(context);
          final favorite = Favorite(id: _id != 0 ? _id + 1 : _id + 1, name: inputName, category: newCategory, completed: false);
          database.insertFavorite(favorite);
          resetValuesAfterSubmit();
        },
      ),
    );
  }

  IconButton _buildDateButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.check),
      onPressed: () async {},
    );
  }

  void resetValuesAfterSubmit() {
    setState(() {
      newCategory = "";
      controller.clear();
    });
  }
}
