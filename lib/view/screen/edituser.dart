import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/widget/Custom_product_Item_widget.dart';
import 'package:chefio1/view/widget/Rate.dart';
import 'package:chefio1/view/widget/custom_Text_Form_fild.dart';

import 'package:chefio1/view/widget/custom_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class EditUser extends StatelessWidget {
  EditUser({
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
                                    Icons.edit,
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
                            "First Name",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          CostomTextFormFild(
                            hint: "Samuel",
                            prefixIcon: IconlyBroken.edit,
                          ),
                          Text(
                            "Last Name",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          CostomTextFormFild(
                            hint: "Tesfaye",
                            prefixIcon: IconlyBroken.edit,
                          ),
                          Text(
                            "Phone number",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          CostomTextFormFild(
                            hint: "0923515863",
                            prefixIcon: IconlyBroken.edit,
                          ),
                          Text(
                            "email",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          CostomTextFormFild(
                            hint: "samueltes@gmail.com",
                            prefixIcon: IconlyBroken.edit,
                          ),
                          Text(
                            "Government Id",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          addCoverPhoto(),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Security",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Username",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          CostomTextFormFild(
                            hint: "Samueltes",
                            prefixIcon: IconlyBroken.edit,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Password",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          CostomTextFormFild(
                            onChanged: (value) {},
                            hint: "Password",
                            prefixIcon: IconlyBroken.lock,
                            onTapSuffixIcon: () {},
                          ),
                          CustomButton(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditUser(),
                                  ));
                            },
                            text: "Update",
                            color: Color.fromARGB(255, 93, 199, 148),
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
          ],
        ),
      ),
    );
  }

  addCoverPhoto() {
    return InkWell(
      onTap: () {
        // add image to firbase
      },
      // This is ana external package
      child: DottedBorder(
          dashPattern: [15, 5],
          color: outline,
          strokeWidth: 2,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          child: SizedBox(
            width: double.infinity,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.photo,
                    size: 65,
                    color: Colors.grey,
                  ),
                  Text(
                    "Add Image",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(" ")
                ],
              ),
            ),
          )),
    );
  }
}
