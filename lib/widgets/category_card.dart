

import 'package:flutter/material.dart';
import 'package:news_app_eyouth/core/app_utills.dart';
import 'package:news_app_eyouth/views/category_news_screen.dart';
import 'package:news_app_eyouth/views/news_details_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.catTitle
  });
final String catTitle ; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppUtills.pushToScreen(context, CategoryNewsScreen(category: catTitle.toLowerCase(),));
      },
      child: Container(
        height: 60,
        width: 180,
        margin: EdgeInsets.all( 8),
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage("assets/images/istockphoto-2156599809-612x612.jpg", ),
            fit: BoxFit.cover
          )
        ), 
        child: Center(
          child: Text(catTitle , style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.white),),
        ),
      ),
    );
  }
}
