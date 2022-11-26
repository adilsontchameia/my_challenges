import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_pic.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search itens....',
                      suffixIcon: Icon(Icons.settings_applications_sharp)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
