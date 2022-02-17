import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  var emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Spacer(),
                      const Text(
                        "Quên mật khẩu",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.only(left: 15.0),
                        decoration: BoxDecoration(
                          color: kGrayColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextFormField(
                          controller: emailTextController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Nhập email";
                            }
                            //now we use email validator package
                            final bool _isvalid = EmailValidator.validate(
                                emailTextController.text);
                            if (!_isvalid) {
                              return "Email đã được nhập không chính xác";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.email_outlined),
                            hintText: "Email",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Quên mật khẩu đừng lo, hãy cung cấp cho chúng tôi email đã đăng ký của bạn, chúng tôi sẽ gửi cho bạn một email để đặt lại mật khẩu của bạn.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      const Spacer(),
                      MaterialButton(
                        color: kPrimaryColor,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 50,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: const Text(
                          "Đặt lại mật khẩu",
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }
}
