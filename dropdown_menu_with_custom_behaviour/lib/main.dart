import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample",
      home: Scaffold(
        body: Stack(children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.brown.shade800,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 130.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Card(
                      color: Colors.white,
                      child: SizedBox(
                        // height: 560.0,
                        width: 350.0,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.arrow_back),
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Center(
                                      child: CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    const Text(
                                      'Name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    TextField(
                                      focusNode:
                                          FocusNode(canRequestFocus: false),
                                      decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                          width: 1.0,
                                        )),
                                        prefixIcon: Icon(Icons.person),
                                        hintText: "your name",
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Ocupation',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      child: DropdownButton(
                                        onChanged: (val) {},
                                        items: const [
                                          DropdownMenuItem(
                                            child: Text("User"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Phone Number',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 5),
                                    TextField(
                                      focusNode:
                                          FocusNode(canRequestFocus: false),
                                      decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                          width: 1.0,
                                        )),
                                        prefixIcon: Icon(Icons.phone),
                                        hintText: "+244 924 *** ***",
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 135,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              border: Border.all()),
                                          child: const Center(
                                              child: Text(
                                            'Continue',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0),
                                          )),
                                        ),
                                        Container(
                                          width: 135,
                                          height: 40,
                                          color: Colors.amber,
                                          child: const Center(
                                              child: Text(
                                            'Continue',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
