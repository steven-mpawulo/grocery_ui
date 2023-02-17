import 'package:flutter/material.dart';
import 'package:grocery_ui/screens/components/cart_tile.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0, bottom: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              "My cart",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  CartTile(
                    orderIcon: Icons.food_bank,
                    orderLabel: "Vegetables",
                    orderPrice: "50.65",
                    orderItems: "4",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  CartTile(
                    orderIcon: Icons.food_bank,
                    orderLabel: "Fruits",
                    orderPrice: "32.65",
                    orderItems: "6",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  CartTile(
                    orderIcon: Icons.food_bank,
                    orderLabel: "Meat",
                    orderPrice: "72.76",
                    orderItems: "5",
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  width: 160.0,
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 4.0,),
                Text("Or"),
                SizedBox(width: 4.0,),
                SizedBox(
                  width: 160.0,
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120.0,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)
                ),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Repeat previous order"),
                    Container(
                      width: 200.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Order Now",
                          style: TextStyle(
                          color: Colors.black,
                        ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height:8.0),
            SizedBox(
              height: 80.0,
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Total amount",
                          style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          const Text(
                            "\$150",
                            style: TextStyle(color: Colors.white,)
                          ),
                          const SizedBox(width: 100.0),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 30.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                      width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Row(
                                  children:const [
                                     Text(
                                        "Pay now",
                                        style: TextStyle(color: Colors.white,),
                                    ),
                                    SizedBox(width:8.0),
                                     Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                    ),
                                  ],

                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ),
            ),

          ]
        ),
      ),
    );
  }
}
