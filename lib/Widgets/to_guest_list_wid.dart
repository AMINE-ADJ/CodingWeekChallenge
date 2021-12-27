import 'package:challengecw/guest_card.dart';
import 'package:flutter/material.dart';
import 'package:challengecw/Screens/guests_screen.dart';

class ToGuestListWidget extends StatefulWidget {
  String? name;
  String? Phone;
  String? Status;
  String? pic;
  final ValueChanged<String> onChangedname;
  final ValueChanged<String> onChangedphone;
  final ValueChanged<String> onChangedstatus;
  final ValueChanged<String> onChangedpic;
  final VoidCallback onSavedAdd;


ToGuestListWidget({this.name,this.Phone,this.Status,this.pic,required this.onChangedname,required this.onChangedphone,required this.onChangedstatus,required this.onChangedpic,required this.onSavedAdd});

  @override
  State<ToGuestListWidget> createState() => _ToGuestListWidgetState();
}

class _ToGuestListWidgetState extends State<ToGuestListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildName(),
        SizedBox(height: 4,),
        buildPhone(),
        SizedBox(height: 4,),
        buildStatus(),
        SizedBox(height: 4,),
        buildImage(),
        SizedBox(height: 4,),
        buildButton(),
      ],
    ),
    );
  }

  Widget buildName()=> TextFormField(
    onChanged: widget.onChangedname,
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Name'
    ),
  );
Widget buildPhone()=> TextFormField(
    onChanged: widget.onChangedphone,
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Phone'
    ),
  );
Widget buildStatus()=> TextFormField(
    onChanged: widget.onChangedpic,
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Status'
    ),
  );
Widget buildImage()=> TextFormField(
    onChanged: widget.onChangedstatus,
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Image Link'
    ),
  );
  Widget buildButton() =>SizedBox(
    width: double.infinity,
    child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Colors.green),
          ),
        onPressed: () {},
        child: Text('ADD'),

    ),
  );
}


