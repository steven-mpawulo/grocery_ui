import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  final String orderLabel;
  final String orderPrice;
  final String orderItems;
  final IconData orderIcon;
  final String orderDate;
  const OrderTile({Key? key,
    required this.orderLabel,
    required this.orderPrice,
    required this.orderItems,
    required this.orderIcon,
    required this.orderDate,

  }) : super(key: key);

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
            const SizedBox(height: 2.0,),
            Text(orderDate)
          ],
        ),
        const SizedBox(width: 150.0,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("\$$orderPrice"),
            const SizedBox(height: 2.0,),
            Text("$orderItems items"),
          ],
        )
      ],
    );
  }
}
