import 'package:flutter/material.dart';

import 'components/category_card.dart';
import 'components/order_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.place),
        title: const Text("Sylvia, Bangladesh"),
        actions: const [
          CircleAvatar(
            child: Icon(Icons.person)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 20.0,
          bottom: 8.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //  greeting
            const Text("Good morning, Mate",
              style: TextStyle(color: Colors.grey),
            ),
          const SizedBox(height: 16.0),
          //  order fresh items text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text("Let's order fresh ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "items for you",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 20.0),
          //  Categories
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Categories"),
                const SizedBox(height:8.0,),
                SizedBox(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryCard(categoryLabel: "Vegetables",
                          categoryIcon: Icons.food_bank,
                          categoryColor: Colors.blue,
                      ),
                      SizedBox(width: 4.0),
                      CategoryCard(categoryLabel: "Fruits",
                          categoryIcon: Icons.food_bank,
                        categoryColor: Colors.greenAccent,
                      ),
                      SizedBox(width: 4.0),
                      CategoryCard(categoryLabel: "Meat",
                          categoryIcon: Icons.food_bank,
                        categoryColor: Colors.amberAccent,
                      ),
                    ],
                  ),
                ),

              ],
            ),
          const SizedBox(height: 16.0),
          //  my orders
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("My Orders"),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children:[
                      OrderTile(
                        orderLabel: "Vegetables",
                        orderPrice: "50.65",
                        orderItems: "6",
                          orderIcon: Icons.food_bank,
                        orderDate: "14 Feb 2023"
                      ),
                      const SizedBox(height: 8.0),
                      OrderTile(
                          orderLabel: "Fruits",
                          orderPrice: "55.32",
                          orderItems: "4",
                          orderIcon: Icons.food_bank,
                        orderDate: "20 Jan 2023"
                      ),
                      const SizedBox(height: 8.0),
                      OrderTile(
                          orderLabel: "Meat",
                          orderPrice: "35.36",
                          orderItems: "1",
                          orderIcon: Icons.food_bank,
                          orderDate: "4 Jan 2023"
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
