import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_test/blocs/categories/bloc/categories_bloc.dart';
import 'package:food_test/models/categories_model.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final CategoriesBloc _categoryBloc = CategoriesBloc(CategoriesInitial());

  @override
  void initState() {
    _categoryBloc.add(GetCategoriesList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories List'),
        backgroundColor: Colors.transparent,
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
          _buildListCategories()
        ],
      ),
    );
  }

  Widget _buildListCategories() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => _categoryBloc,
        child: BlocListener<CategoriesBloc, CategoriesState>(
          listener: (context, state) {
            if (state is CategoriesError) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          child: BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (context, state) {
              if (state is CategoriesInitial) {
                return _buildLoading();
              } else if (state is CategoriesLoading) {
                return _buildLoading();
              } else if (state is CategoriesLoaded) {
                return _buildCard(context, state.categoriesModel);
              } else if (state is CategoriesError) {
                return Container();
              }
              return (Container(
                child: CircularProgressIndicator(),
              ));
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, CategoriesModel model) {
    return ListView.builder(
      itemCount: model.categories.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text("No: ${model.categories[index]}"),
                  Text("Category: ${model.categories[index]}"),
                  Text("Image Link: ${model.categories[index]}"),
                  Text("Description: ${model.categories[index]}"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());
}
