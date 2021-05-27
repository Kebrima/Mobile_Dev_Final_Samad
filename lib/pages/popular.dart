import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget{
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Align(
                    alignment: Alignment.topRight,
                    child:
                      Container(
                      alignment: Alignment.center,
                      ),
                      ),
                    Text(
                    "Anime News",
                    style: Theme.of(context).textTheme.display1
                        .copyWith(fontWeight: FontWeight.w900),
                    ),
                    Text(
                          "Our top writers search and write the hottest anime news for you day and night. How is Hayao Miyazaki doing? When to expect a new film by Makoto Shinkai? Will Naruto have a sequel? Find the answer to these and other burning questions on the virtual pages of our application. In addition, here you will find news of manga and sometimes light novel, as well as reviews, reviews of individual episodes and special materials on a variety of related topics - from Japanese holidays to the creative methods of individual directors.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
    ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2,
                      children: <Widget>[Container(
                        padding: EdgeInsets.symmetric(vertical:6 ,horizontal:6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            )
                        ),
                          child:
                          Text("The original CG anime <Eden> premiered on Netflix. The series was released on a streaming service with subtitles in Russian. \nSee more",
                            style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                          ),

                      )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2,
                      children: <Widget>[Container(
                        padding: EdgeInsets.symmetric(vertical:6 ,horizontal:6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            )
                        ),

                          child:
                          Text("'Ponyo Fish on the Cliff' - an exclusive excerpt in the new Russian dubbing of the classic painting by Hayao Miyazaki \nStudio Reanimedia continues to sound Studio Ghibli classics.\n See more",
                            style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                          ),

                      )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2,
                      children: <Widget>[Container(
                        padding: EdgeInsets.symmetric(vertical:6 ,horizontal:6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            )
                        ),
                          child:
                          Text("Fighting on the popular anime 'Demon Slayer' will be published in English The incredibly successful anime 'Demon Slayer', whose feature film 'Demon Slayer: Train' Endless ' is now in full swing in the Russian box office, simply could not do without games based on motives.\n See more",
                            style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                          ),

                      )
                      ],
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