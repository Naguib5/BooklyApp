import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            textcolor: Colors.black,
            text: 'Free',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              customLaunchUrl(context, bookModel.volumeInfo.previewLink);
            },
            fontsize: 16,
            backgroundColor: const Color(0xffEF8262),
            textcolor: Colors.white,
            text: getText(bookModel),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if ((bookModel.volumeInfo.previewLink == null)) {
      return "Not Avilable";
    } else {
      return 'preview';
    }
  }
}
