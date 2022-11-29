import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../resume_page/widgets/custom_text_field.dart';

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
                    children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/profile_pic.jpg'),
                        ),
                      ),
                      Align(
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
          child: GridView.custom(
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              pattern: [
                const WovenGridTile(5 / 7),
                const WovenGridTile(
                  1,
                  crossAxisRatio: 0.9,
                  alignment: AlignmentDirectional.centerEnd,
                ),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
