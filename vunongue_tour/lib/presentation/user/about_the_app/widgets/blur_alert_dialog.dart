import 'package:flutter/material.dart';
import 'package:vunongue_tour/theme/theme.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback continueCallBack;

  const CustomAlertDialog(this.title, this.content, this.continueCallBack, {Key? key})
      : super(key: key);
 final TextStyle textStyle = const TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: textStyle,
      ),
      content: Text(
        content,
        style: textStyle,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            "OK",
            style: TextStyle(color: VunongueColors.blue),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
