import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/shoe_model.dart';
import 'package:shop_app/pages/Home/detail_screen/detail_screen.dart';

class ShoeCard extends StatelessWidget {
  const ShoeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: foodProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) => FoodProduct(
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                foodDetail: foodProducts[index],
                              )));
                },
                product: foodProducts[index],
              )),
    );
  }
}

class FoodProduct extends StatelessWidget {
  const FoodProduct({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.image),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              product.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "${product.price}vnd",
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const SizedBox(
                  height: 10.0,
                ),
                const Icon(
                  Icons.star,
                  size: 20,
                  color: kPrimaryColor,
                ),
                Text(
                  "${product.rating}",
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
