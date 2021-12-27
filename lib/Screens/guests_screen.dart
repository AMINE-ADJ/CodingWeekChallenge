
import 'package:challengecw/guest_card.dart';
import 'package:flutter/material.dart';
import 'package:challengecw/guest_info.dart';
import 'package:challengecw/Widgets/add_to_dialog_wid.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Color Colorcard = Colors.white;
class GuestScreen extends StatelessWidget {
  final List<MyCard> Guests =[
    MyCard(
      couleur: Colorcard,
      Cardchild: GuestInfo(
        name: 'Walid',
        phone:'0669383040',
        status: 'Pending',
        pic: 'https://scontent.falg6-1.fna.fbcdn.net/v/t39.30808-6/257381958_436778671150105_4967343394050127449_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHPmoT4uG2Eop1SJ_8RfFGjo6v7TS0LwMWjq_tNLQvAxU4vFrxw9ta4S7uYPiDIpKgFDk45cB-i_5zPMBOStAsc&_nc_ohc=qdd-zVthfBsAX8cI76j&_nc_ht=scontent.falg6-1.fna&oh=00_AT_JnvJbjvzGGB6dHR2DdUVxSRpUjCsJHDeFzaiUvsr1uA&oe=61CEBB71',
      ),
      onPress: (){},
    ),
    MyCard(
      couleur: Colorcard,
      Cardchild: GuestInfo(
        name: 'Amine',
        phone:'0559309619',
        status: 'Pending',
        pic: 'https://scontent.falg6-1.fna.fbcdn.net/v/t1.6435-9/146463867_1392590664424939_1741032584109010098_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHbW-S2YP4d_IUPNcm8MkKStomFtMOFxw-2iYW0w4XHD9wKU5wSrGezxV5wJmasV6jhYYHT_SJSCRsREtHk9pJd&_nc_ohc=v0YHM8vN_LEAX_DNW66&tn=gt9eUdx6ZOmnbgYp&_nc_ht=scontent.falg6-1.fna&oh=00_AT_BidY_2lbqVEghZ_6lDEVYt1mZ5IAKWk7znKqUpF4Tlg&oe=61F13C3A',
      ),
      onPress: (){},
    ),
    MyCard(
      couleur: Colorcard,
      Cardchild: GuestInfo(
        name: 'Amine',
        phone:'0559309619',
        status: 'Confirmed',
        pic: 'https://th.bing.com/th/id/OIP.-8QKMIQGgt1C5ZJzquVMvQAAAA?w=170&h=180&c=7&r=0&o=5&pid=1.7',
      ),
      onPress: (){},
    ),
    MyCard(
      couleur: Colorcard,
      Cardchild: GuestInfo(
        name: 'Amine',
        phone:'0559309619',
        status: 'Declined',
        pic: 'https://th.bing.com/th/id/OIP.-8QKMIQGgt1C5ZJzquVMvQAAAA?w=170&h=180&c=7&r=0&o=5&pid=1.7',
      ),
      onPress: (){},
    ),
    MyCard(
      couleur: Colorcard,
      Cardchild: GuestInfo(
        name: 'Amine',
        phone: '0559309619',
        status: 'Pending',
        pic: 'https://th.bing.com/th/id/OIP.-8QKMIQGgt1C5ZJzquVMvQAAAA?w=170&h=180&c=7&r=0&o=5&pid=1.7',
      ),
      onPress: (){},
    ),
    MyCard(
      couleur: Colorcard,
      Cardchild: GuestInfo(
        name: 'Amine',
        phone: '0559309619',
        status: 'Pending',
        pic: 'https://th.bing.com/th/id/OIP.-8QKMIQGgt1C5ZJzquVMvQAAAA?w=170&h=180&c=7&r=0&o=5&pid=1.7',
      ),
      onPress: (){},
    ),
    MyCard(
      couleur: Colorcard,
      Cardchild: GuestInfo(
        name: 'Amine',
        phone: '0559309619',
        status: 'Pending',
        pic: 'https://th.bing.com/th/id/OIP.-8QKMIQGgt1C5ZJzquVMvQAAAA?w=170&h=180&c=7&r=0&o=5&pid=1.7',
      ),
      onPress: (){},
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFFF9FAFC),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text('Shellmates\'s guests',style: TextStyle(color: Colors.black87),
          )),

        backgroundColor: Color(0xFFFF9FAFC),

      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Guests.length,
          itemBuilder: (BuildContext context, int index) {
               return Slidable(
                   key: const ValueKey(0),


                   startActionPane: ActionPane(

                     motion: const ScrollMotion(),

                     dismissible: DismissiblePane(onDismissed: () {}),
                     children: const [
                       SlidableAction(

                         onPressed:null,
                         backgroundColor: Color(0xFFFE4A49),
                         foregroundColor: Colors.white,
                         icon: Icons.delete,
                         label: 'Delete',
                       ),
                     ],
                   ),
                   endActionPane: const ActionPane(
                     motion: ScrollMotion(),
                     children: [
                       SlidableAction(
                         // An action can be bigger than the others.
                         flex: 2,
                         onPressed: null,
                         backgroundColor: Color(0xFF7BC043),
                         foregroundColor: Colors.white,
                         icon: Icons.edit,
                         label: 'Edit',
                       ),
                       SlidableAction(
                         onPressed: null,
                         backgroundColor: Color(0xFF0392CF),
                         foregroundColor: Colors.white,
                         icon: Icons.save,
                         label: 'Save',
                       ),
                     ],
                   ),
                   child: Guests[index]);
          }

      ),
      bottomNavigationBar: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:MaterialStateProperty.all(Colors.green),
          padding: MaterialStateProperty.all(const EdgeInsets.all(15)),

        ),
        child: Icon(Icons.add, size: 40,),
        onPressed: ()=>showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AddToDialogWidget(
                        );
                      }
                  ),
      ),
    );
  }
}
