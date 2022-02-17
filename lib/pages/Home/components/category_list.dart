import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryList(
            press: () {},
            title: "Sneaker",
          ),
          CategoryList(
            press: () {},
            title: "Giày da",
          ),
          CategoryList(
            press: () {},
            title: "Boots",
          ),
          CategoryList(
            press: () {},
            title: "Dép",
          ),
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: press,
        child: Chip(
            backgroundColor: kSecondaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            label: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Text(
                title,
                style: const TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
              ),
            )),
      ),
    );
  }
}
