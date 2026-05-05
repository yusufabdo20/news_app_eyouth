import 'package:flutter/material.dart';
import 'package:news_app_eyouth/widgets/custom_listview_news_items_builder.dart';
import 'package:news_app_eyouth/widgets/seach_listview_news_results.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 String searchValue="" ; 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Screen'),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  // label: Text("Search"),
                  labelText: "Search" ,
                  hintText: "Search here on news", 
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20) , 
                      borderSide: BorderSide(color:Colors.amber)
                  ), 
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color:Colors.blue)
                  ), 
                  enabledBorder: OutlineInputBorder(
                  
                      borderRadius: BorderRadius.circular(20) , 
                      borderSide: BorderSide(color:Colors.purple , width: 5)
                 
                  ), 
                  focusedBorder: OutlineInputBorder(
                  
                      borderRadius: BorderRadius.circular(100) , 
                      borderSide: BorderSide(color:Colors.cyan , width: 2)
                 
                  ),  
                  // prefix: Icon(Icons.search), 
                  prefixIcon: Icon(Icons.search) , 
                ), 
                onFieldSubmitted: (value) {
                  searchValue =value ; //123
                  print("Search for : $value");
               setState(() {
                 
               });
               },
              ) ,
            searchValue.isEmpty? Text("NOT SEARCH YET") :   SeachListviewNewsResults(searchQuery: searchValue,)
            ],
          ),
        ),
      ),
    );
  }
}