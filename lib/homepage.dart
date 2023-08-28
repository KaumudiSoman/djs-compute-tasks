import 'package:flutter/material.dart';

class ProfileStudent extends StatefulWidget {
  const ProfileStudent({super.key});

  @override
  State<ProfileStudent> createState() => _ProfileStudentState();
}

class _ProfileStudentState extends State<ProfileStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 225,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(221, 221, 254, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 60,
                    left: 30,
                    right: 30,
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 125,
                                width: 125,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(1, 1, 24, 1),
                                  borderRadius: BorderRadius.circular(65),
                                ),
                                child: const Center(
                                  child: Text(
                                    "SN",
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shivam Nagori",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(1, 1, 24, 10),
                                    ),
                                  ),
                                  Text(
                                    "THIRD YEAR",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(1, 1, 24, 10),
                                    ),
                                  ),
                                  Text(
                                    "CSE(DS) STUDENT",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(1, 1, 24, 10),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 15,
            right: 15,
            top: 250,
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: const [
                ProfileBoxes(name: "Full Name", value: "Shivam Sanjay Nagori"),
                ProfileBoxes(name: "SAP ID", value: "60009210083"),
                ProfileBoxes(name: "Branch", value: "CSE (DS)"),
                ProfileBoxes(name: "CGPA", value: "8.8"),
                ProfileBoxes(name: "Semester", value: "Sem 5"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileBoxes extends StatefulWidget {
  final String name;
  final String value;

  const ProfileBoxes({super.key, required this.name, required this.value});

  @override
  State<ProfileBoxes> createState() => _ProfileBoxesState();
}

class _ProfileBoxesState extends State<ProfileBoxes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.fromLTRB(10, 7, 5, 7),
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(221, 221, 254, 1), // Border color
            width: 2.0, // Border width
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${widget.name.toUpperCase()} :",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(221, 221, 254, 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.value,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
