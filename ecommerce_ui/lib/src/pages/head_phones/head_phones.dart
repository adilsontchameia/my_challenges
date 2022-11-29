import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../resume_page/widgets/custom_text_field.dart';
import '../resume_page/widgets/favourites_button.dart';

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
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              itemCount: 10,
              itemBuilder: ((context, index) => const HeadPhonesWidget()),
              staggeredTileBuilder: (index) => StaggeredTile.count(
                1,
                index.isEven ? 1.3 : 1.2,
              ),
            )),
      ),
    ));
  }

  //Function to close and show mainMenu
  void _close() {
    Navigator.pop(context);
  }
}

class HeadPhonesWidget extends StatelessWidget {
  const HeadPhonesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
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
                'assets/airpods.png',
                height: 140,
                width: 170,
              ),
              const Text(
                'descriptionText',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                'priceText',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
