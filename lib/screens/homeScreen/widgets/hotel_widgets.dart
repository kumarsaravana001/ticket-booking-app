import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utilities/app_layout.dart';

class HotelSlideWIdgets extends StatefulWidget {
  const HotelSlideWIdgets({super.key});

  @override
  State<HotelSlideWIdgets> createState() => _HotelSlideWIdgetsState();
}

class _HotelSlideWIdgetsState extends State<HotelSlideWIdgets> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.brown,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 2,
              spreadRadius: 1.5,
            )
          ]),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: size.width * 0.6,
      //  height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://imageio.forbes.com/blogs-images/johnnyjet/files/2017/10/traveling-alone.jpg?format=jpg&width=960'),
                  fit: BoxFit.cover),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 8),
            child: Text(
              "Tourist",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "New York",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "\$30/night",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
