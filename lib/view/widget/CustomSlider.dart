import 'package:chefio1/constans/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text_fild_in_upload.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double slider = 30;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Price Rate",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "( per day )",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFildInUpload(
          hint: "Price",
          radius: 30,
        ),
      ],
    );
  }
}
