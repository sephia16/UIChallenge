import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.circle,
                    size: 70,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    "MONDAY 16",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      "TODAY",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color.fromARGB(255, 195, 9, 232),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "17  18  19  20",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                height: 210,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  color: Color.fromARGB(255, 255, 215, 94),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Row(children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "11",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "30",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("|"),
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "20",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 27,
                      ),
                      const Text(
                        "DESIGN",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -25),
                        child: const Text(
                          "MEETING",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 1,
                        child: Transform.translate(
                          offset: const Offset(0, -25),
                          child: Row(
                            children: [
                              Text(
                                "ALEX",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "HELENA",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "NANA",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                height: 210,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  color: Color.fromARGB(255, 170, 56, 241),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Row(children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "35",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("|"),
                      Text(
                        "14",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 27,
                      ),
                      const Text(
                        "DAILY",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -25),
                        child: const Text(
                          "PROJECT",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 1,
                        child: Transform.translate(
                          offset: const Offset(0, -25),
                          child: Row(
                            children: [
                              const Text(
                                "ME",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "RICHARD",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "CIRY",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "+4",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                height: 210,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  color: Color.fromARGB(255, 136, 230, 82),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Row(children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "15",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "00",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("|"),
                      Text(
                        "16",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "30",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 27,
                      ),
                      const Text(
                        "WEEKLY",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -25),
                        child: const Text(
                          "PLANNING",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 1,
                        child: Transform.translate(
                          offset: const Offset(0, -25),
                          child: Row(
                            children: [
                              Text(
                                "DEN",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "NANA",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "MARK",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
