import 'package:chefio1/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class CustomDropdownInUpload extends StatelessWidget {
  CustomDropdownInUpload({Key? key}) : super(key: key);

  final List<String> _options = ['car', 'house', 'cloth', 'tools', 'others'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: 'Select an option',
        hintStyle: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: SecondaryText),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: outline)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: outline)),
      ),
      items: _options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        // Do something with the selected value
      },
    );
  }
}