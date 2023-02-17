import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final IconData orderIcon;
  final String orderPrice;
  final String orderLabel;
  final String orderItems;
  const CartTile({Key? key, required this.orderIcon, required this.orderPrice, required this.orderLabel, required this.orderItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
            child: Icon(orderIcon)
        ),
        const SizedBox(width: 8.0,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Text(orderLabel),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("\$$orderPrice"),
                const SizedBox(width: 4.0,),
                Text(
                  "$orderItems items",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(width: 120.0,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                SizedBox(width: 2.0),
                Text(
                    "Edit",
                    style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
