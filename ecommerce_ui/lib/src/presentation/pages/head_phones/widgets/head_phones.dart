import 'package:flutter/material.dart';

import '../../resume_page/widgets/favourites_button.dart';
class HeadPhonesPages extends StatefulWidget {
  const HeadPhonesPages({
    Key? key,
    required this.descriptionText,
    required this.imgUrl,
    required this.priceText,
    required this.containerColor,
  }) : super(key: key);
  final String descriptionText, imgUrl, priceText;
  final Color containerColor;

  @override
  State<HeadPhonesPages> createState() => _HeadPhonesPagesState();
}

class _HeadPhonesPagesState extends State<HeadPhonesPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      width: 170.0,
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 4.0, left: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FavouriteButton(),
                ),
              ),
              Image.asset(
                widget.imgUrl,
                height: 165,
                width: 170,
              ),
              Text(
                widget.descriptionText,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                widget.priceText,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
