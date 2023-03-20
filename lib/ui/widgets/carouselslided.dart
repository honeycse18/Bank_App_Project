import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget carouselSlided() {
  return Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (_, index) {
          return Container(
            height: 120,
            width: 280,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(top: 10, left: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SUTRAQ Currency',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
