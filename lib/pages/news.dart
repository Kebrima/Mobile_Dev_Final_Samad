import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              decoration: BoxDecoration(
                  color: Color(0xFF212121)
              ),
            ),
            SafeArea(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 15, 15),
                  child:
                  Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child:
                        Container(
                          alignment: Alignment.center,
                        ),
                      ),
                      Text(
                        "Top 15 Anime Series Of All Time",
                        style: Theme.of(context).textTheme.display1
                            .copyWith(fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "This list of 'Top 15 Anime Series Of All Time' will feature what I consider to be the 100 greatest anime series ever made. Some of the qualifying factors taken into consideration for a series being deemed great are, entertainment value, popularity, lasting appeal, quality of writing, originality and significance to the medium of anime. I didn't take just one factor into consideration. I took many as you can see by my description, this is not a list for most popular anime only.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                          "\n\n1. Cowboy Bebop\n2. Steins Gate\n3. Berserk\n4. Mushi-Shi\n5. The Rose of Versailles\n6. Legend of the Galactic Heroes\n7. Full Metal Alchemist: Brotherhood\n8. Boku No Hero Academia\n9. Your Name\n10. Death Note\n11. Attack On Titan\n12. No Game No Life\n13. Fairy Tail\n14. Naruto\n15. Tokyo Ghoul",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                     ],
                  )
              ),
            ),
          ]),
    );
  }
}