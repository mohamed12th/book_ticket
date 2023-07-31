import 'package:book_ticket/screens/app_layout/view.dart';
import 'package:book_ticket/screens/map_home/map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
 final Map< String , dynamic> hotel ;

   const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Color(0xFF687daf),
        borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF687daf),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap(10),
           Text(
            "${hotel['place']}",
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold,color: Colors.white),),
          const Gap(5),
           Text("${hotel['destination']}",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white ),),
          const Gap(5),
          Text( "\$${hotel['price']}/night", style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white),
            ),
        ],
      ),
    );


  }
}
