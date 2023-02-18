import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/screen/home_screen.dart';
import 'package:chefio1/view/screen/product_item_screen.dart';
import 'package:chefio1/view/screen/sign_up_screen.dart';
import 'package:chefio1/view/widget/custom_button.dart';
import 'package:chefio1/view/widget/custom_text_form_fild.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // The variable related to showing or hidingf the text
  bool obscure = false;

  //The variable key related to the txt fild
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Form(
                    key: key,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Login",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "Please enter your account here",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        CostomTextFormFild(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the username";
                            } else {
                              return null;
                            }
                          },
                          hint: "Email or phone number",
                          prefixIcon: IconlyBroken.message,
                        ),
                        CostomTextFormFild(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the password";
                            } else {
                              return null;
                            }
                          },
                          obscureText: obscure,
                          hint: "Password",
                          prefixIcon: IconlyBroken.lock,
                          suffixIcon: obscure == true
                              ? IconlyBroken.show
                              : IconlyBroken.hide,
                          onTapSuffixIcon: () {
                            setState(() {});
                            obscure = !obscure;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: "Log In",
                          color: primary,
                          onTap: () {
                            setState(() {
                              if (key.currentState!.validate()) {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductItemScreen(),
                                  ),
                                  (route) => false,
                                );
                              }
                              ;
                            });
                          },
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
