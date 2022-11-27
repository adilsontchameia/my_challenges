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
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(300),
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundImage: AssetImage('assets/profile_pic.jpg'),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search itens....',
                            suffixIcon:
                                Icon(Icons.settings_applications_sharp)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3,
                      tabs: [
                        Tab(text: 'All'),
                        Tab(text: 'Headphones'),
                        Tab(text: 'Guitar'),
                        Tab(text: 'Pianos'),
                        Tab(text: 'Microphones'),
                        Tab(text: 'Speaker'),
                        Tab(text: 'Sound'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            //   ResumePage(),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
