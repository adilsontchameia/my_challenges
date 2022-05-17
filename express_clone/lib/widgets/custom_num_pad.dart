import 'package:express_clone/utils/consts.dart';
import 'package:flutter/material.dart';

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class CustomNumPad extends StatelessWidget {
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;

  const CustomNumPad({
    Key key,
    this.delete,
    this.onSubmit,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Column(
          children: [
            Row(
              children: [
                NumberButton(
                  number: 1,
                  controller: controller,
                ),
                NumberButton(
                  number: 2,
                  controller: controller,
                ),
                NumberButton(
                  number: 3,
                  controller: controller,
                ),
              ],
            ),
            Row(
              children: [
                NumberButton(
                  number: 4,
                  controller: controller,
                ),
                NumberButton(
                  number: 5,
                  controller: controller,
                ),
                NumberButton(
                  number: 6,
                  controller: controller,
                ),
              ],
            ),
            Row(
              children: [
                NumberButton(
                  number: 7,
                  controller: controller,
                ),
                NumberButton(
                  number: 8,
                  controller: controller,
                ),
                NumberButton(
                  number: 9,
                  controller: controller,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // this button is used to delete the last number
                CustomDelButton(),
                NumberButton(
                  number: 0,
                  controller: controller,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDelButton extends StatelessWidget {
  final TextEditingController controller;
  const CustomDelButton({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 55.0,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: titlePadColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IconButton(
          iconSize: 25,
          icon: Image(image: AssetImage('assets/del.png')),
          onPressed: () {
            controller.text += '';
          }),
    );
  }
}

// Define NumberButton widget
// And Its Shape
class NumberButton extends StatelessWidget {
  final int number;

  final double size;
  final TextEditingController controller;

  const NumberButton({
    Key key,
    this.number,
    this.size,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 55.0,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: titlePadColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backGroundColor, shadowColor: Colors.transparent),
        onPressed: () {
          controller.text += number.toString();
        },
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
              fontFamily: 'RobotoSlab',
              fontWeight: FontWeight.w100,
              decoration: TextDecoration.underline,
              color: titlePadColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
