import 'dart:ui';

import 'package:flutter/material.dart';
class Azkar extends StatefulWidget {
  @override
  _AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  int counter=0;
  String text='استغفر الله العظيم';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('سبحة الأذكار',style: TextStyle(color: Colors.white),
      ),


        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/bio');
          }, icon: Icon(Icons.person,color: Colors.white,)),
          PopupMenuButton<String>(
              onSelected: (value){
                if(text!=value){
                  setState(() {
                    text=value;
                    counter=0;


                  });

                }

              },
              itemBuilder: (context){

                return[
                  PopupMenuDivider(),
                  PopupMenuItem(child: Text('استغفر اللع العظيم'),
                    value: 'استغفر اللع العظيم',
                  ),
                  PopupMenuDivider(),

                  PopupMenuItem(child: Text('الحمد الله '),
                    value: '  الحمدالله',
                  ),
                  PopupMenuDivider(),

                  PopupMenuItem(child: Text('سبحان الله'),
                    value: 'سبحان الله',
                  ),

                ];

              })


        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: (){
        setState(() {
          counter+=1;

        } );

      },
        child: Icon(Icons.add ),),
        body: Stack(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage('https://www.ramstarab.com/wp-content/uploads/2019/06/%D8%B5%D9%88%D8%B1-%D9%85%D8%B5%D8%A7%D8%AD%D9%818.jpg'),
        //     fit: BoxFit.cover,

        //     ),


        // ),

          children: [
       ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 6,sigmaY: 6),

         child: Image.network('https://www.ramstarab.com/wp-content/uploads/2019/06/%D8%B5%D9%88%D8%B1-%D9%85%D8%B5%D8%A7%D8%AD%D9%818.jpg',height: double.infinity,fit: BoxFit.cover,),


        ),

          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           const   CircleAvatar(

                radius: 70,
                backgroundImage: AssetImage('images/ee.jpg'),
              ),
              SizedBox(height: 30),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                clipBehavior: Clip.antiAlias,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),


                child:  Row(
                  children: [
                    Expanded(
                      child:  Text(text,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                          textAlign:TextAlign.center
                      ),
                    ),
                    Container(
                      color: Colors.deepPurpleAccent,
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(counter.toString(),style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,

                        ),

                        )
                    )

                  ],

                ),

              ),
              SizedBox(height: 20),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(

                  children: [

                    Expanded( flex:2,

                        child: ElevatedButton(

                          onPressed: (){
                            setState(() {
                              ++counter;
                            });

                          },
                          child: Text('تسبيح',style: TextStyle(color: Colors.white,fontSize: 24)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                            minimumSize: Size(0,45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),)

                            ),
                          ),
                        )
                    ),
                    Expanded(child: ElevatedButton(onPressed: (){
                      setState(() {
                        counter=0;
                      });

                    },child: Text('اعادة',style: TextStyle(color: Colors.white,fontSize: 24),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        minimumSize: Size(0, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(10),)

                        ),
                      ),
                    )
                    ),
                  ],
                ),
              )


            ],





          ),

    ]
               ),

      );
  }
}
