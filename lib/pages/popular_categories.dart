import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular categories",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0XFFA36C88),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0XFFF8CDEC),
                child: Image.asset(
                  "assets/images/beatch.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0XFFF8CDEC),
                child: Image.asset(
                  "assets/images/camping.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0XFFF8CDEC),
                child: Image.asset(
                  "assets/images/car.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0XFFF8CDEC),
                child: Image.asset(
                  "assets/images/food.png",
                  height: 60,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 13, right: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Beach",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Camping",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Car",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Food",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
