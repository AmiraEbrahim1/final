import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/view/shared.dart';
class DropDownWidget extends StatefulWidget {
  final double width;


  DropDownWidget({Key? key, required this.width,})
      : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  Widget? selectedValue;
 // String selectedName='Stacy';
  String selectedImage='images/Ellipse 578.png';
  String selectedImage2='images/girls_PNG6474.png';
  List<UserAccount> userData=[
    UserAccount(image:'images/girls_PNG6474.png', name:  'Natasha')
  ];
  List<UserAccount> userData2=[
    UserAccount(image:'images/Ellipse 578.png', name:name)
  ];
  @override
  Widget build(BuildContext context) {
   // return BlocConsumer<PubCubit,PubStates>(
   //   listener: (context,state){},
    //   builder: (context,state){
         return BlocConsumer<PubCubit,PubStates>(
           listener: (context,state){},
           builder: (context,state){
             return

               SizedBox(
                 width: widget.width,
                 child: DropdownButtonHideUnderline(
                   child: DropdownButton2(
                     dropdownDecoration: BoxDecoration(
                       color: Colors.black.withOpacity(0.8),
                       borderRadius: BorderRadius.circular(15),
                     ),
                     customButton: Container(
                       margin: EdgeInsets.only(right: 10),
                       child: Row(
                         children: [
                           const Icon(
                             Icons.keyboard_arrow_down,
                             size: 25,
                             color: Colors.white,
                           ),
                           Expanded(
                             child:PubCubit.get(context).isStacy==false? Text(
                              name,
                               maxLines: 1,
                               overflow: TextOverflow.ellipsis,
                               style: const TextStyle(color: Colors.white, fontSize: 16),
                             ):Text(
                               'Natasha',
                               maxLines: 1,
                               overflow: TextOverflow.ellipsis,
                               style: const TextStyle(color: Colors.white, fontSize: 16),
                             ),
                           ),
                           const SizedBox(
                             width: 5,
                           ),
                           Container(
                             width: 35,
                             height: 35,
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 image: DecorationImage(
                                     image:PubCubit.get(context).isStacy==false? AssetImage(selectedImage):AssetImage(selectedImage2),
                                     fit: BoxFit.fill)),
                           ),
                         ],
                       ),
                     ),
                     iconSize: 0,
                     items:PubCubit.get(context).isStacy==false? userData
                         .map((item) => DropdownMenuItem<UserAccount>(
                       value:userData[0],
                       child:Row(
                         children: [
                           Text(
                             item.name,
                             style: const TextStyle(color: Colors.white, fontSize: 11),
                           ),
                           const SizedBox(
                             width: 4,
                           ),
                           Container(
                             width: 30,
                             height: 30,
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 image: DecorationImage(
                                     image: AssetImage(item.image),
                                     fit: BoxFit.fill)),
                           ),
                         ],
                       ) ,
                     ))
                         .toList():userData2
                         .map((item) => DropdownMenuItem<UserAccount>(
                       value:userData2[0],
                       child:Row(
                         children: [
                           Text(
                             item.name,
                             style: const TextStyle(color: Colors.white, fontSize: 11),
                           ),
                           const SizedBox(
                             width: 4,
                           ),
                           Container(
                             width: 30,
                             height: 30,
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 image: DecorationImage(
                                     image: AssetImage(item.image),
                                     fit: BoxFit.fill)),
                           ),
                         ],
                       ) ,
                     ))
                         .toList(),
                     value: selectedValue,
                     onChanged: (dynamic val) {
                        PubCubit.get(context).changeAccount();
                       //  selectedName=val!.name;

                       // selectedImage=val.image;
                       // userData.removeAt(0);
                       // userData.add(UserAccount(image:'images/Ellipse 578.png' , name:name));
                       // print(val);
                     },
                     buttonHeight: 15,
                     //buttonWidth: 140,
                     itemHeight: 25,
                   ),
                 ),
               );

           },
         );
       }
  //  );
  }
class UserAccount{
  String image;
  String name;
  UserAccount(
  {
    required this.image,
    required this.name
}
      );
}