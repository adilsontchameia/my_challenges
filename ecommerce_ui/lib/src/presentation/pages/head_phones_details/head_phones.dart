import 'package:ecommerce_ui/src/data/models/headphone_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../utils/search_bar_field.dart';
import 'widgets/head_phones_widget.dart';

class HeadPhonesPage extends StatefulWidget {
  const HeadPhonesPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HeadPhonesPageState();
  }
}

class _HeadPhonesPageState extends State<HeadPhonesPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                            onTap: () => _close(),
                            child: const Icon(Icons.arrow_back_sharp)),
                      ),
                      const Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/profile_pic.jpg'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(),
                  const SizedBox(height: 15),
                  const Text(
                    'Found 281 Headphones',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(120), child: Container()),
        ),
        body: const Padding(
            padding: EdgeInsets.all(8.0), child: StaggeredGridWidget()),
      ),
    ));
  }

  //Function to close and show mainMenu
  void _close() {
    Navigator.pop(context);
  }
}

class StaggeredGridWidget extends StatelessWidget {
  const StaggeredGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      itemCount: headphonesList.length,
      itemBuilder: ((context, index) => HeadPhonesWidget(
            headphoneModel: headphonesList[index],
          )),
      staggeredTileBuilder: (index) => StaggeredTile.count(
        1,
        index.isEven ? 1.4 : 1.2,
      ),
    );
  }
}
