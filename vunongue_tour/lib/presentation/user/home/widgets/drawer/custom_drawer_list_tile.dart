import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/theme/theme.dart';

import '../../../../../helpers/consts/page_manager.dart';
import '../../../../../providers/theme_provider.dart';

class CustomDrawerListTile extends StatelessWidget {
  const CustomDrawerListTile(
      {Key? key, required this.icon, required this.text, this.page, this.onTap})
      : super(key: key);
  final IconData icon;
  final String text;
  final int? page;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    //Observar as mudancas da pagina do drawer
    final int currentPage = context.watch<PageManager>().page;
    return InkWell(onTap: () {
      context.read<PageManager>().setPage(page!);
    }, child: Consumer<ThemeModel>(builder: (_, themeModel, __) {
      return Container(
        height: 40,
        color: Colors.amber.withOpacity(0.4),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: FaIcon(icon,
                  color: currentPage == page ? Colors.amber : Colors.red),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:
                      themeModel.isDark ? Colors.white : VunongueColors.blue),
            ),
          ],
        ),
      );
    }));
  }
}
