import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> productList = [
    'Console',
    'Phone',
    'Camera',
    'UAV',
    'IPad',
    'Computer',
    'VR',
    'Facility',
  ];

  List<String> imageList = [
    'assets/images/screenshot.png',
    'assets/images/pigeon.png',
    'assets/images/name.png'
    // 'assets/images/screenshot.png',
    // 'assets/images/screenshot.png',
    // 'assets/images/screenshot.png',
    // 'assets/images/screenshot.png',
    // 'assets/images/screenshot.png',
    // 'assets/images/screenshot.png',
    // 'assets/images/screenshot.png',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(135, 175, 175, 175),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.search),
                              onPressed: () {
                                // Implement search functionality
                              },
                            ),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search what interests you',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.shop),
                      onPressed: () {
                        // Implement shop functionality
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.15,
                width: screenWidth * 0.9,
                child: Card(
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 169, 176, 226),
                        Color.fromARGB(255, 100, 116, 236)
                      ]),
                    ),
                    child: const ListTile(
                      title: Text(
                        'Year-end to promote',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'All goods are rented at one fold.',
                        style: TextStyle(
                            color: Color.fromARGB(255, 196, 196, 196),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.mobile_friendly,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(135, 175, 175, 175),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: screenHeight * 0.25,
                  // color: const Color(0x858EEFFF),
                  padding: const EdgeInsets.all(10),
                  child: GridView.count(
                    mainAxisSpacing: 5,
                    crossAxisCount: 4,
                    //crossAxisSpacing: 5,
                    children: List.generate(productList.length, (index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset(
                              imageList[index % imageList.length],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(productList[index]),
                        ],
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.40,
                width: screenWidth * 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Flash Sale",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 81, 72, 212)),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Card(
                                color: const Color.fromARGB(255, 255, 227, 206),
                                margin: const EdgeInsets.all(10.0),
                                // child: Padding(
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Game Zone ",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/pigeon.png", // Replace with actual image path
                                      height: screenHeight * 0.2, // Height
                                      width: screenWidth *
                                          0.5, // Half of the screen width
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Card(
                                  color: Color.fromARGB(255, 123, 196, 203),
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(18.0),
                                        child: Text(
                                          "Robot Bomb",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 70, 140, 197),
                                              fontSize: 18),
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/pigeon.png", // Replace with actual image path
                                        height: screenHeight * 0.05, // Height
                                        width: screenWidth * 0.3, // Width
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Color.fromARGB(255, 167, 196, 244),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(18.0),
                                          child: Text(
                                            "Robot Bomb",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/pigeon.png", // Replace with actual image path
                                          height: screenHeight * 0.05, // Height
                                          width: screenWidth * 0.3, // Width
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
