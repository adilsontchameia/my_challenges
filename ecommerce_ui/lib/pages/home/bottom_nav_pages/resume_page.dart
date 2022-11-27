import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Text('On Promotion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Most Populars',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_rounded)
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 220,
              width: double.infinity,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
