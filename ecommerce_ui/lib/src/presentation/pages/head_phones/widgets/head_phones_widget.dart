import 'package:flutter/material.dart';

import '../../../../models/headphone_card_model.dart';
import '../../resume_page/widgets/favourites_button.dart';

class HeadPhonesWidget extends StatelessWidget {
  const HeadPhonesWidget({Key? key, this.headphoneModel}) : super(key: key);
  final HeadphoneModel? headphoneModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: headphoneModel!.backGroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FavouriteButton(),
                ),
              ),
              Image.asset(
                headphoneModel!.imgUrl,
                height: 140,
                width: 170,
              ),
              const SizedBox(height: 5.0),
              Text(
                headphoneModel!.productName,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                headphoneModel!.productPrice.toString(),
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
