import 'package:chefio1/view/widget/custom_text_fild_in_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateAndReviewPage extends StatefulWidget {
  @override
  _RateAndReviewPageState createState() => _RateAndReviewPageState();
}

class _RateAndReviewPageState extends State<RateAndReviewPage> {
  double _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate and Review'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            RatingBar.builder(
              initialRating: _rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 40,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
            ),
            SizedBox(height: 10),
            CustomTextFildInUpload(
              hint: "Review (optional)",
              maxLines: 6,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: save rating and review
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
