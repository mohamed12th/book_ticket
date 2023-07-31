import 'package:book_ticket/screens/app_layout/view.dart';
import 'package:book_ticket/screens/widget/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';


class TicketScreen extends StatelessWidget {
  final Map< String , dynamic> ticket ;
  const TicketScreen({Key? key , required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      height: 200,

      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                       Text(ticket['from']['code'],
                         style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 23,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints){
                                return Flex(direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
                                    height: 1,width: 3,
                                    child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),),
                                  )),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5 , child: Icon(Icons.local_airport_rounded , color: Colors.white,),))
                        ],

                      )
                      ),
                      const ThickContainer(),
                      Expanded(child: Container()),
                       Text(ticket['to']['code'],
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500, color: Colors.white),)
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ticket['from']['name'], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white),),
                      Text(ticket['flying_time'] ,style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),),
                      Text(ticket['to']['name'] , style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFFF37B67),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )

                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (
                        BuildContext context , BoxConstraints constraints ) {
                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        direction: Axis.horizontal,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        )),

                      );
                    },
                    ),
                  )
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16,top: 10),
              decoration: const BoxDecoration(
                  color: Color(0xFFF37B67),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(ticket['date'],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),),
                      Text(ticket['departure_time'],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white)),
                      Text(ticket['number'].toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white)),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Date",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),),
                      Text("Departure time",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white)),
                      Text("Number",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white)),
                    ],
                  ),
                ],
              ),

            ),

          ],
        ),
      ),
    );




  }
}



