import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/product_card.dart';
import 'package:flutter/material.dart';

class BarOfPlaces extends StatelessWidget {
  const BarOfPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(title: "Pepper Gril & Bar"),
        body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.76,
          ),
          itemCount: 30,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return const ProductCard(
              image: AppImage.eventPic,
              desce: "20% Off Any 1/2 Jerk Meal With a Drink",
              bottomText: "Pepper Grill & Bar",
              price: "Save  \$2",
            );
          },
        ));
  }
}
