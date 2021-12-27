import 'package:flutter/material.dart';


class GuestInfo extends StatelessWidget {
  final String? name;
   final String? phone;
   final String? status;
   final String pic;

GuestInfo({this.name, this.phone, this.status,required this.pic});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        SizedBox(width: 15.0),
        CircleAvatar(
          radius: 40.0,
           backgroundImage: NetworkImage(pic),

        ),
        SizedBox(width: 20.0),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15.0,),
            Text('${name}',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 2,
                color: Colors.black,
                letterSpacing: 2,
                fontStyle: FontStyle.normal,
            ),),
            SizedBox(height: 10.0,),
            Text('${phone}',style: TextStyle(
              fontSize: 15,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,

            ),),
            SizedBox(height: 10.0,),

            Text('${status}', style: TextStyle(
              fontSize: 15,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,

            ),)
          ],
        ),
      ],
    );
  }
}
