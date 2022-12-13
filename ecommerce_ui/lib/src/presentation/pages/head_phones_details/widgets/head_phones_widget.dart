import 'package:flutter/material.dart';

import '../../../../data/models/headphone_card_model.dart';
import '../../home_page/widgets/favourites_button.dart';

class HeadPhonesWidget extends StatefulWidget {
  const HeadPhonesWidget({Key? key, this.headphoneModel}) : super(key: key);
  final HeadphoneModel? headphoneModel;

  @override
  State<HeadPhonesWidget> createState() => _HeadPhonesWidgetState();
}

class _HeadPhonesWidgetState extends State<HeadPhonesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.headphoneModel!.backGroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FavoriteButton(
                    onTap: (() {
                      print('object');
                    }),
                  ),
                ),
              ),
              Image.asset(
                widget.headphoneModel!.imgUrl,
                height: 140,
                width: 170,
              ),
              const SizedBox(height: 5.0),
              Text(
                widget.headphoneModel!.productName,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                widget.headphoneModel!.productPrice.toString(),
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
