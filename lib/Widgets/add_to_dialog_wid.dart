import 'package:challengecw/guest_card.dart';
import 'package:flutter/material.dart';
// import 'package:todo_app_ui_example/widget/todo_form_widget.dart';
import 'package:challengecw/Screens/guests_screen.dart';
import 'package:challengecw/Widgets/to_guest_list_wid.dart';

class AddToDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddToDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String phone = '';
  String status='';
  String pic='';
  @override
  Widget build(BuildContext context) => AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add a guest',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 8),
        ToGuestListWidget(
          onChangedname:(name)=> setState(()=>this.name=name ),
            onChangedphone:(phone)=>setState(()=>this.phone=phone ) ,
            onChangedstatus:(status)=>setState(()=>this.status=status ) ,
            onChangedpic :(pic)=>setState(()=>this.pic=pic ) ,

          onSavedAdd: (){},
        ),

        // TodoFormWidget(
        //   onChangedTitle: (title) => setState(() => this.title = title),
        //   onChangedDescription: (description) =>
        //       setState(() => this.description = description),
        //   onSavedTodo: () {},
        // ),
      ],
    ),
  );
}