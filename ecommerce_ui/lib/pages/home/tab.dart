import 'package:ecommerce_ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class TabLayoutExample extends StatefulWidget {
  const TabLayoutExample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabLayoutExampleState();
  }
}

class _TabLayoutExampleState extends State<TabLayoutExample>
    with TickerProviderStateMixin {
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
                    const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search itens....',
                          suffixIcon: Icon(Icons.settings_applications_sharp)),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TabBar(
                      padding: EdgeInsets.zero,
                      isScrollable: true,
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3,
                      tabs: [
                        const Tab(text: 'All'),
                        GestureDetector(
                          child: const Tab(text: 'Headphones'),
                          onTap: () => print('Clicked'),
                        ),
                        const Tab(text: 'Guitar'),
                        const Tab(text: 'Pianos'),
                        const Tab(text: 'Microphones'),
                        const Tab(text: 'Speaker'),
                        const Tab(text: 'Sound'),
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
              HomePage(),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          ),
        ),
      ),
    );
  }
}
