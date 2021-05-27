import 'package:flutter/material.dart';

class CharachtersPage extends StatefulWidget {
  final personDetail;
  final Color color;

  const CharachtersPage({Key key, this.personDetail, this.color}) : super(key: key);

  @override
  _CharachtersPage createState() => _CharachtersPage();
}

class _CharachtersPage extends State<CharachtersPage> {
  @override
  Widget build(BuildContext context){
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var bid = widget.personDetail['id'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Positioned(
          //   top: 45,
          //     left: 15,
              // child: IconButton(icon: Icons.arrow_back, color: Colors.grey, iconSize: 40, onPressed: () {
              //   Navigator.pop(context);
              // },)
          // ),

          Positioned(
              top: 65,
              left: 5,
              child:Text(
                  widget.personDetail['name'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              )),

          Positioned(
            top: 115,
              left: 5,
              child: Text(
               widget.personDetail['type'][0].toString(),
                style: TextStyle(
                  fontSize: 20,
                ),
              )
          ),

          Positioned(
            bottom: 0,
            child: Container(
            width: width,
            height: height * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.greenAccent
            ),
              
             child: Padding(
               padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  SizedBox(height: 50,),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.3,
                        child: Text('Name', style: TextStyle(fontSize: 18, color: Colors.white),),
                      ),
                      Container(
                        width: width * 0.3,
                        child: Text(widget.personDetail['name'], style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    ],
                  ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           width: width * 0.3,
                           child: Text('Type', style: TextStyle(fontSize: 18, color: Colors.white),),
                         ),
                         Container(
                           child: Text(widget.personDetail['type'].join(","), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           width: width * 0.3,
                           child: Text('Weight', style: TextStyle(fontSize: 18, color: Colors.white),),
                         ),
                         Container(
                           width: width * 0.3,
                           child: Text(widget.personDetail['weight'], style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           width: width * 0.3,
                           child: Text('Height', style: TextStyle(fontSize: 18, color: Colors.white),),
                         ),
                         Container(
                           width: width * 0.3,
                           child: Text(widget.personDetail['height'], style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           width: width * 0.3,
                           child: Text('Spawn time', style: TextStyle(fontSize: 18, color: Colors.white),),
                         ),
                         Container(
                           width: width * 0.3,
                           child: Text(widget.personDetail["spawn_time"], style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           width: width * 0.3,
                           child: Text('Spawn chance', style: TextStyle(fontSize: 18, color: Colors.white),),
                         ),
                         Container(
                           child: Text(widget.personDetail['spawn_chance'].toString(), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           width: width * 0.3,
                           child: Text('Weaknesses', style: TextStyle(fontSize: 18, color: Colors.white),),
                         ),
                         Container(
                           child: Text(widget.personDetail['weaknesses'].join(","), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                       ],
                     ),
                   ),



             ]),
             ),
          ),
          ),
          Positioned(
            top: 45,
              right: -8,
              child: Image.asset('assets/images/pokeball.png', height: 100, fit: BoxFit.fitHeight,)
          ),
       bid == 1 ? Positioned(
            top: 130,
              left: 95,
              child: Image.asset('assets/images/001.png', height: 200,fit: BoxFit.fitHeight),
          ): Positioned(
         top: 160,
         left: 100,
         child: Image.asset('assets/images/who.jpg', height: 100,fit: BoxFit.fitHeight),
       )
        ],
      ),
    );
  }
}