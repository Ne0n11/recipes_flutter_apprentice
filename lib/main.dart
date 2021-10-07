import 'package:flutter/material.dart';

import 'models/recipe.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primaryColor: Colors.grey,
      accentColor: Colors.black,
    );
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme,
      home: MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Recipe.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            return buildRecipeCard(Recipe.samples[index]);
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    // 1
    return Card(
      // 2
      child: Column(
        // 3
        children: <Widget>[
          // 4
          Image(image: AssetImage(recipe.imageUrl)),
          // 5
          Text(recipe.label),
        ],
      ),
    );
  }


}
