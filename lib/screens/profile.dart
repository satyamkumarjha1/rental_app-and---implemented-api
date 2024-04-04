import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.document_scanner_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 38,
                    backgroundImage: AssetImage(
                      'assets/images/pigeon.png',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Luck HotPot",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 236, 200, 162)),
                        child: const Padding(
                          padding: EdgeInsets.all(6),
                          child: Text(
                            "New User",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "4",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text("Collect"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "28",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text("Browse"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "3",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text("Card"),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: screenHeight * 0.2,
                width: screenWidth * 1,
                child: Card(
                  
                  color: const Color.fromARGB(255, 27, 79, 119),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CLUB",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "Memeber of the exclusive",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("Object");
                          },
                          child: const Text("Open"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                // width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: .5,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My order",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF145E9A),
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.payments_sharp,
                                  color: Colors.yellow,
                                ),
                                Text("Payment"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.gif_box,
                                  color: Colors.green,
                                ),
                                Text("Delivery"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.delivery_dining,
                                  color: Colors.pinkAccent,
                                ),
                                Text("Take"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.compare_outlined,
                                  color: Colors.blue,
                                ),
                                Text("Complete"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 218, 217, 217),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "My goods",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(20, 94, 154, 1),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Stay back: 2 >",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 20, 94, 154),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: 150,
                // width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: .5,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Service",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.credit_card_off,
                                ),
                                Text("Credit"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.inventory_outlined,
                                ),
                                Text("Invite"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.add_to_drive,
                                ),
                                Text("Advice"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.help_center_outlined,
                                ),
                                Text("Help"),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
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
