import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_test/blocs/randomizer/random_bloc.dart';
import 'package:food_test/models/random_model.dart';
import 'package:food_test/models/random_model.dart';

class RandomPage extends StatefulWidget {
  @override
  _RandomPageState createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  final RandomBloc _randomBloc = RandomBloc(RandomInitial());

  @override
  void initState() {
    _randomBloc.add(GetRandomList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random List'),
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
          _buildListRandom()
        ],
      ),
    );
  }

  Widget _buildListRandom() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => _randomBloc,
        child: BlocListener<RandomBloc, RandomState>(
          listener: (context, state) {
            if (state is RandomError) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          child: BlocBuilder<RandomBloc, RandomState>(
            builder: (context, state) {
              if (state is RandomInitial) {
                return _buildLoading();
              } else if (state is RandomLoading) {
                return _buildLoading();
              } else if (state is RandomLoaded) {
                return _buildCard(context, state.randomModel);
              } else if (state is RandomError) {
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

  Widget _buildCard(BuildContext context, RandomModel model) {
    return ListView.builder(
      itemCount: model.meals.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text("No: ${model.meals[index]}"),
                  Text("Meal: ${model.meals[index]}"),
                  Text("Drink Alternative: ${model.meals[index]}"),
                  Text("Category: ${model.meals[index]}"),
                  Text("Area :${model.meals[index]}"),
                  Text("Instructions:${model.meals[index]}"),
                  Text("Meal Thumb :${model.meals[index]}"),
                  Text("Tags :${model.meals[index]}"),
                  Text("Youtube:${model.meals[index]}"),
                  Text("Ingredient 1:${model.meals[index]}"),
                  Text("Ingredient 2:${model.meals[index]}"),
                  Text("Ingredient 3:${model.meals[index]}"),
                  Text("Ingredient 4:${model.meals[index]}"),
                  Text("Ingredient 5:${model.meals[index]}"),
                  Text("Ingredient 6:${model.meals[index]}"),
                  Text("Ingredient 7:${model.meals[index]}"),
                  Text("Ingredient 8:${model.meals[index]}"),
                  Text("Ingredient 9:${model.meals[index]}"),
                  Text("Ingredient 10:${model.meals[index]}"),
                  Text("Ingredient 11:${model.meals[index]}"),
                  Text("Ingredient 12:${model.meals[index]}"),
                  Text("Ingredient 13:${model.meals[index]}"),
                  Text("Ingredient 14:${model.meals[index]}"),
                  Text("Ingredient 15:${model.meals[index]}"),
                  Text("Ingredient 16:${model.meals[index]}"),
                  Text("Ingredient 17:${model.meals[index]}"),
                  Text("Ingredient 18:${model.meals[index]}"),
                  Text("Ingredient 19:${model.meals[index]}"),
                  Text("Ingredient 20:${model.meals[index]}"),
                  Text("Measure 1:${model.meals[index]}"),
                  Text("Measure 2:${model.meals[index]}"),
                  Text("Measure 3:${model.meals[index]}"),
                  Text("Measure 4:${model.meals[index]}"),
                  Text("Measure 5:${model.meals[index]}"),
                  Text("Measure 6:${model.meals[index]}"),
                  Text("Measure 7:${model.meals[index]}"),
                  Text("Measure 8:${model.meals[index]}"),
                  Text("Measure 9:${model.meals[index]}"),
                  Text("Measure 10:${model.meals[index]}"),
                  Text("Measure 11:${model.meals[index]}"),
                  Text("Measure 12:${model.meals[index]}"),
                  Text("Measure 13:${model.meals[index]}"),
                  Text("Measure 14:${model.meals[index]}"),
                  Text("Measure 15:${model.meals[index]}"),
                  Text("Measure 16:${model.meals[index]}"),
                  Text("Measure 17:${model.meals[index]}"),
                  Text("Measure 18:${model.meals[index]}"),
                  Text("Measure 19:${model.meals[index]}"),
                  Text("Measure 20:${model.meals[index]}"),
                  Text("Measure 20:${model.meals[index]}"),
                  Text("Source:${model.meals[index]}"),
                  Text("Creative Common Confirmed:${model.meals[index]}"),
                  Text("Data Modified:${model.meals[index]}"),
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
