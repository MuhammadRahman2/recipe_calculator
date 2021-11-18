import 'package:flutter/material.dart';
import 'package:recipe_calculator/recipe_model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key ,required this.recipe,})
   : super(key: key);

  final Recipe recipe;
  // final Recipe recipe;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _sliderVal =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.lebal.toString()),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.ImgUrl.toString())),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(widget.recipe.lebal.toString(),
            style: const  TextStyle(

            fontWeight: FontWeight.w700,
            fontSize: 20.0,
            fontFamily: 'Palatino'
            ),
            ),
            
            Expanded(
              child:
                  ListView.builder(       
                  padding: const EdgeInsets.only(top: 10),
                  itemCount: widget.recipe.ingredients!.length,
                  itemBuilder: (BuildContext context, int index){
                    final ingredient = widget.recipe.ingredients![index];
                    return Text(
                      '${'${ingredient.quantity! * _sliderVal}'
                      '${ingredient.measure}'
                      '${ingredient.name}'
                      }',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                      ),
                    );
                  }),
            ),
                Slider(
                  min: 1,
                  max: 10,
                  divisions: 10,
                  label: '${_sliderVal * widget.recipe.serviings} servings',
                  value: _sliderVal.toDouble(),
                   onChanged: (newValue){
                      setState(() {
                        _sliderVal = newValue.round();
                      });
                   },
                   activeColor: Colors.green,
                   inactiveColor: Colors.black,
                   )
          ],
        ),),  
      
    );
  }
}