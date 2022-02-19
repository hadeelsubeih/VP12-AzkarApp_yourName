import 'package:flutter/material.dart';
class BioCarde extends StatelessWidget {
  const BioCarde({
    required this.leadingIcon, required this.title,required this.subTitle, this.marginBo=0, required this.onPressed,
    Key? key,
  }) : super(key: key);
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final double marginBo;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: BorderSide(color: Colors.white,width: 1
        ),
      ),
      margin: EdgeInsetsDirectional.only(start: 20,end: 20,bottom: marginBo),
      child: ListTile(
        leading: Icon(leadingIcon,color: Colors.white,
        ),

        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
              fontFamily: 'SourceSerifPro',
              fontWeight: FontWeight.bold),

        ),
        subtitle: Text(
          subTitle,
          style: TextStyle( color :Colors.white70,fontFamily: 'SourceSerifPro'),
        ),

      ),


    );
  }
}
