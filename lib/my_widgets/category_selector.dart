import 'package:design/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:design/utils/dimensions.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimenssions.smContainer,
      color: Colors.indigo,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, 
        int index){
       return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
         child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimenssions.paddingBody,
            vertical: Dimenssions.paddingBody,
          ),
          child: Text(categories[index],style: TextStyle(
            color: index == selectedIndex ? AppTheme.darkColor : AppTheme.secondaryColor,
            fontSize: Dimenssions.mdSize,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2
          ),)),
       );
        }),
    );
  }
}
