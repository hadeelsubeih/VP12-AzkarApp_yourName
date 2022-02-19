import 'package:flutter/material.dart';
void main()=>runApp(LunchSecreen());
class LunchSecreen extends StatefulWidget {
  @override
  State<LunchSecreen> createState() => _LunchSecreenState();
}

class _LunchSecreenState extends State<LunchSecreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/azkar');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Colors.deepPurpleAccent.shade100,
                Colors.deepPurpleAccent.shade200,

              ]

          ),

        ),
        child: Text('AzkarApp',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),



    );
  }
}
