import 'dart:convert';

import 'package:final_project/pages/charachters.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
// import 'package:cached_network_image/cached_network_image.dart';
class DetailsPage extends StatefulWidget{
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>{
  var pokemonApi = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  List pokedex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(mounted){
      PokemonData();
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          pokedex != null ? Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.4,
          ), itemCount: pokedex.length,
          itemBuilder: (context, index){
            var type = pokedex[index]['type'][0];
            return Card(
              color: Colors.blueGrey,
              child: ElevatedButton(
                child:
                  Text(
                    pokedex[index]['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18,
                    ),
                    // textAlign: TextAlign.center,
                    textAlign: TextAlign.center,
                  ),
                onPressed: () {
                  //TODO Navigate to new page
                  Navigator.push(context, MaterialPageRoute(builder:(context){return CharachtersPage(
                    personDetail: pokedex[index],
                    color: Colors.white,
                  );}),);
                },
                  style: ElevatedButton.styleFrom(
                  primary: Colors.black12,
                ),
                //   Text(
                //     type.toString()
                //
                //   )
                // ],
              ),
            );
          },)
          ): Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }

  void PokemonData(){
    var url = Uri.https("raw.githubusercontent.com", "/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.get(url).then((value){
      if(value.statusCode == 200){
        var decodedData = jsonDecode(value.body);
        pokedex = decodedData['pokemon'];
        print(pokedex);
        setState(() {
        });
      }
    });
  }
}



// return Scaffold(
// body: Center(
// child: ElevatedButton(
// child: Text('press'),
// onPressed: () {
// PokemonData();
// },
// ),
// ),
// );