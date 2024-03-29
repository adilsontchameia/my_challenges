import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../../helpers/consts/page_manager.dart';
import '../../../../../providers/theme_provider.dart';
import '../../../../../theme/theme.dart';

class CustomDrawerListTile extends StatelessWidget {
  const CustomDrawerListTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.page,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final int page;

  @override
  Widget build(BuildContext context) {
    //Observar as mudancas da pagina do drawer
    //Quando usar o context dentro do build para modificar o estado conforme o valor interno, usar o watch.
    final int currentPage = context.watch<PageManager>().page;

    return InkWell(onTap: () {
      //Sempre que usar o context e buscar o objecto pelo provider dentro de uma funcao, devo usar o read.
      context.read<PageManager>().setPage(page);
    }, child: Consumer<ThemeModel>(builder: (_, themeModel, __) {
      return Container(
        height: 40,
        color: (currentPage == page
            ? themeModel.isDark
                ? Colors.blue.withOpacity(0.09)
                : Colors.blue.withOpacity(0.09)
            : Colors.transparent),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: FaIcon(
                icon,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: themeModel.isDark
                      ? VunongueColors.white
                      : VunongueColors.blue),
            ),
          ],
        ),
      );
    }));
  }
}
