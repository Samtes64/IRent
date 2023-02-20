import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomLikedNotifcation extends StatelessWidget {
  const CustomLikedNotifcation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: const AssetImage("assets/imges/sam.jpg"),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Samuel Wondimagegnehu",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: mainText),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "New Reserve Request  .  h1",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: SecondaryText),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "Accept",
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: CustomButton(
              onTap: () {},
              text: "Reject",
              color: Secondary,
            )),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
