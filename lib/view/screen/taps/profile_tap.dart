import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/widget/Custom_product_Item_widget.dart';

import 'package:chefio1/view/widget/custom_button.dart';
import 'package:flutter/material.dart';

import '../../widget/Rate.dart';

class ProfileTap extends StatelessWidget {
  ProfileTap({
    Key? key,
    this.showFollowBottomInProfile = false,
  }) : super(key: key);
  bool showFollowBottomInProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: mainText,
              ),
            ),
          ),
        ],
        leading: showFollowBottomInProfile == true
            ? Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: mainText,
                    )),
              )
            : const SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              const AssetImage("assets/imges/Avatar3.png"),
                        ),
                        showFollowBottomInProfile == false
                            ? InkWell(
                                onTap: () {},
                                child: const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: primary,
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Samuel Tesfaye",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "@samueltes",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: []),
                    showFollowBottomInProfile == true
                        ? CustomButton(onTap: () {}, text: "Follow")
                        : const SizedBox(
                            height: 20,
                          ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RateAndReviewPage()),
                      );
                    },
                    text: "Rate",
                    color: Color.fromARGB(255, 54, 178, 226),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomButton(
                    onTap: () {},
                    text: "Report",
                    color: Secondary,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
