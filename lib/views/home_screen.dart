import 'package:flutter/material.dart';
import 'package:news_app_eyouth/core/app_utills.dart';
import 'package:news_app_eyouth/views/search_screen.dart';
import 'package:news_app_eyouth/widgets/category_card.dart';
import 'package:news_app_eyouth/widgets/custom_listview_news_items_builder.dart';
import 'package:news_app_eyouth/widgets/news_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [IconButton(onPressed: (){
          AppUtills.pushToScreen(context, SearchScreen()) ;
        }, icon: Icon(Icons.search))],
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCard( catTitle: "Business",),
                  CategoryCard( catTitle: "Entertainment",),
                  CategoryCard( catTitle: "General",),
                  CategoryCard( catTitle: "Health",),
                  CategoryCard( catTitle: "Science",),
                ],
              ),
            ),
              CustomListViewNewsItemBuilder(category: "",searchQuery: "",),
            ],
          ),
        ),
      ),
    );
  }
}

