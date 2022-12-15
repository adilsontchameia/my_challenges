import 'package:ecommerce_ui/src/data/models/headphone_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../utils/search_bar.dart';
import '../home_page/widgets/rounded_profile_pic.dart';
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
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: const Text(
          'Headphones',
          style: TextStyle(
              color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(11.0),
            child: CustomAvatar(),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            children: const [
              CustomSearchBar(),
              SizedBox(height: 15.0),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Found 474 Products',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15.0),
              StaggeredGridWidget(),
            ],
          ),
        ),
      )),
    );
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
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
