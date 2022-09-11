import 'package:flutter/material.dart';
import 'package:vunongue_tour/presentation/user/about_the_app/widgets/blur_alert_dialog.dart';

class AboutTheAppScreen extends StatelessWidget {
  const AboutTheAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
        'Information',
        'Later on, i\'ll writte something about this app. For now, just and a exmplace',
        () {});
  }
}
