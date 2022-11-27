import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 13.0),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text('On Promotion',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Container(
                        height: 250,
                        width: 250,
                        color: Colors.red,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 90,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Most Populars',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_forward_rounded)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(height: 220, width: 350, color: Colors.red),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
