import 'package:book_ticket/screens/hotel/view.dart';
import 'package:book_ticket/screens/map_home/map.dart';
import 'package:book_ticket/screens/ticket/view.dart';
import 'package:book_ticket/screens/widget/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(


            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(

                  children: [
                    Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Good Morning", style: TextStyle(fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black38),),
                            Gap(5),
                            Text("Book Tickets", style: TextStyle(fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),),

                          ],),
                        Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "assets/images/img_1.png", fit: BoxFit.fitHeight,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],),
                    Gap(25),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF4F6FD),

                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Row(
                        children: const [
                          Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205),),
                          Text("Search", style: TextStyle(fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38)),
                        ],
                      ),
                    ),
                    Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [

                        Text("UpcomingFlights", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),),
                        Text("View all", style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38),),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: ticketList.map((singleTicket) => TicketScreen(ticket: singleTicket)).toList(),
                ),
              ),
              const Gap(15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [

                    Text("Hotels", style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),),
                    InkWell(
                        child: Text("View all", style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38),)),
                  ],
                ),
              ),
              const Gap(15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
                  
                ),

              )


            ],
          ),



    );
  }
}
