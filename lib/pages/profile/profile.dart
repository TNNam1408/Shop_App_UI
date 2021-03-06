import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/pages/Home/components/bottom_bar.dart';
import 'package:shop_app/pages/Home/components/enum.dart';
import 'package:shop_app/pages/registration_screens/login_screen.dart';
import 'package:shop_app/pages/registration_screens/signup_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Thông tin",
            style: TextStyle(
              color: kTextGrayColor,
            )),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      bottomNavigationBar: const CustomBottomBar(selectMenu: MenuState.profile),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/huy.jpg",
                  height: 120,
                  width: 120,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Mr.Chu Hoàng Huy",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                ButtonCard(
                  press: () {},
                  title: 'Thông tin',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Đơn mua',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Thông báo',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Mua Voucher',
                ),
                ButtonCard(
                  press: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  title: 'Đăng xuất',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kGrayColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 17.0),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
