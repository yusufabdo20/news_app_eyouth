import 'package:flutter/material.dart';
import 'package:news_app_eyouth/widgets/category_card.dart';
import 'package:news_app_eyouth/widgets/custom_listview_news_items_builder.dart';
import 'package:news_app_eyouth/widgets/news_card_widget.dart';

class CategoryNewsScreen extends StatelessWidget {
  const CategoryNewsScreen({required this.category , super.key});
final String category ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Category News'),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomListViewNewsItemBuilder(category: category,searchQuery: "",),
        ),
      ),
    );
  }
}

