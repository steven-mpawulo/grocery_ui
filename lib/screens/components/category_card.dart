import'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  final String categoryLabel;
  final IconData categoryIcon;
  final Color categoryColor;
  const CategoryCard({Key? key, required this.categoryLabel, required this.categoryIcon, required this.categoryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      width: 150.0,
      child: Card(
        color: categoryColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                categoryIcon,
                size: 48.0,
              ),
              const SizedBox(height: 20.0),
              Container(
                width: 130.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text(
                    categoryLabel,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}
