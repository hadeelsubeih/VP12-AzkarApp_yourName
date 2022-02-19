import 'package:azkarappass2/secreen/card.dart';
import 'package:flutter/material.dart';
class Bio extends StatefulWidget {
  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,

        title: Text('الملف الشخصي',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/hh.jpg'),
              ),
              SizedBox(height: 5),

              Text('هديل عصام صبيح',
                style: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'SourceSerifPro'
                ),
              ),
              SizedBox(height: 10),
              Text('hadeelsh4@gmail.com',
                style:TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 1,
                    fontSize: 16
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
                indent: 40,
                endIndent: 40,
                height: 30,



              ),
              BioCarde(leadingIcon: Icons.person,
                title: 'اسم المستخدم',
                subTitle: '  هديل عصام صبيح',
                marginBo: 10,
                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.book_online,
                title: 'التخصص',
                subTitle: '  حوسبة متنقلة وتطبيقات اجهزة ذكية',
                marginBo: 10,

                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.email,
                title: 'الايميل',
                subTitle: 'HadeelSubeih4@gmail.com',
                marginBo: 10,
                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.phone_android,
                title: 'الجوال',
                subTitle: '0598063768',
                onPressed: (){},

              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('HADEELSH@2000' ,style: TextStyle(color: Colors.blueGrey),),
              ),


            ],

          )

        ],


      ),

    );
  }
}
