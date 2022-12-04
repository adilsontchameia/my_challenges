import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../resume_and_bottom/resume_page.dart';
import '../resume_page/widgets/custom_text_field.dart';
import 'widgets/custom_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.animateTo(2);
  }

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
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/profile_pic.jpg'),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const CustomTextField(),
                    const SizedBox(height: 15),
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TabBar(
                      automaticIndicatorColorAdjustment: true,
                      isScrollable: true,
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3,
                      tabs: [
                        CustomTab(
                            text: 'All', onTap: () => print('Clicked All')),
                        CustomTab(
                            text: 'Headphones',
                            onTap: () =>
                                Navigator.pushNamed(context, headphonesPage)),
                        CustomTab(
                            text: 'Guitar',
                            onTap: () => print('Clicked Guitar')),
                        CustomTab(
                            text: 'Pianos',
                            onTap: () => print('Clicked Pianos')),
                        CustomTab(
                            text: 'Microphones',
                            onTap: () => print('Clicked Microphones')),
                        CustomTab(
                            text: 'Speaker',
                            onTap: () => print('Clicked Speaker')),
                        CustomTab(
                            text: 'Sound', onTap: () => print('Clicked Sound')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(175), child: Container()),
          ),
          body: const TabBarView(
            children: [
              ResumePage(),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.volume_down, size: 350),
              Icon(Icons.music_note, size: 350),
            ],
          ),
        ),
      ),
    );
  }
}
