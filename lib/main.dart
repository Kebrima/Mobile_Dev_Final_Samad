import 'package:final_project/constants.dart';
import 'package:final_project/pages/details.dart';
import 'package:final_project/pages/news.dart';
import 'package:final_project/pages/popular.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context){return PopularPage();}),);
            },
            child: Column(
              children: <Widget>[
                Text("News",
                  style: Theme.of(context).textTheme.title.copyWith(fontSize: 20),),
              ],
            ),
           ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context){return NewsPage();}),);
              },
              child: Column(
                children: <Widget>[
                  Text("Popular",
                      style: Theme.of(context).textTheme.title.copyWith(fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
      children: <Widget>[
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(color: Color(0xFF212121),
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
            "Welcome to",
            style: Theme.of(context).textTheme.display1
                .copyWith(fontWeight: FontWeight.w900),
          ),
                Text(
                  "          anime world ↓",
                  style: Theme.of(context).textTheme.display1
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search anime",
                      border: InputBorder.none,
                    ),
                  ),
                ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 1,
                childAspectRatio: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: <Widget>[Container(
                  padding: EdgeInsets.symmetric(vertical: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )
                  ),
                  child: ElevatedButton(
                    child:
                      Text("Pokemon",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title.copyWith(fontSize: 20),

                      ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsPage();}),);},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                )
                ],
              ),
        ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 1,
                    childAspectRatio: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[Container(
                      padding: EdgeInsets.symmetric(vertical: 70),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          )
                      ),
                      child: ElevatedButton(
                        child:
                        Text("Naruto",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.title.copyWith(fontSize: 20),
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsPage();}),);},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    )
                    ],
                  ),
                ),
              ],
      )
      ),
      ),
      ],
    ),
    );
}
}