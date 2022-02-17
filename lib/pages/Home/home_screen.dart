import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/shoe_model.dart';

import 'components/bottom_bar.dart';
import 'components/category_list.dart';
import 'components/custom_appbar.dart';
import 'components/enum.dart';
import 'components/shoe_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: const CustomBottomBar(
        selectMenu: MenuState.home,
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            //appbar

            CustomAppbar(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Thể loại",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            CategoryCard(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Sản phẩm phổ biến",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            //now we create model of our app food products and we import all images
            ShoeCard(),
          ],
        ),
      ),
    );
  }
}
