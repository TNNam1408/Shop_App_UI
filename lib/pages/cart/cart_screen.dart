import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/shoe_model.dart';
import 'package:shop_app/pages/Home/components/bottom_bar.dart';
import 'package:shop_app/pages/Home/components/enum.dart';
import 'package:shop_app/pages/Home/home_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Giỏ hàng",
            style: TextStyle(
              color: kTextGrayColor,
            )),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      bottomNavigationBar: const CustomBottomBar(selectMenu: MenuState.cart),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: ListView(
          children: [
            ListView.builder(
                //use shrink wrap true and scrollphysics to avoid error because we are using listview in side listview or column
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => FavouriteCard(
                      product: foodProducts[index],
                      press: () {},
                    )),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kSecondaryColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Total: 99.999.999vnd",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: const Text(
                            "Continue to buy",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: Colors.white,
                              backgroundColor: kPrimaryColor,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Check Out",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: press,
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
              decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        product.image,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                        Text(
                          product.description,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${product.price}vnd",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: const Icon(
                                      Icons.remove,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                const Text(
                                  "1",
                                  style: TextStyle(
                                    color: kTextGrayColor,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: const Icon(
                                      Icons.add,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
