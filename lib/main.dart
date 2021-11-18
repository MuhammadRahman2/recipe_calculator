import 'package:flutter/material.dart';
import 'package:recipe_calculator/detail_page.dart';
import 'package:recipe_calculator/recipe_model.dart';

void main(List<String> args) {
  runApp(const RecipeCal());
}



class RecipeCal extends StatefulWidget {
  const RecipeCal({Key? key}) : super(key: key);

  @override
  _RecipeCalState createState() => _RecipeCalState();
}

class _RecipeCalState extends State<RecipeCal> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
        theme: theme.copyWith(
            colorScheme: theme.colorScheme
                .copyWith(primary: Colors.grey, secondary: Colors.black)),
        home: const HomePage(title: "RecipeCal Calculator"));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title.toString()),
        ),
        body: ListView.builder(
          itemCount: Recipe.sample.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailPage(recipe: Recipe.sample[index])));
              },
              child: buildRecipe(Recipe.sample[index]));
          }),
    );
  }

  Widget buildRecipe(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(image: AssetImage(
              recipe.ImgUrl.toString())),
              const SizedBox(height: 14.0),
            Text(recipe.lebal.toString(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino'
            ),
            )
          ],
        ),
      ),
    );
  }
}
