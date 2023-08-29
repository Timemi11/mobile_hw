import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange[200],
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Colors.black,
                          )),
                      child: Icon(
                        size: 20,
                        Icons.close,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Premium",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              Center(
                child: Text("The Secrets to be Fluent in English",
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _CategoryItem("assets/image/book.jpg",
                            "Full Access to Pattern Lessons"),
                        _CategoryItem(
                            "assets/image/book1.png", "Unlock all Limitations"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _CategoryItem(
                            "assets/image/book2.jpg", "All Topics Avaliable"),
                        _CategoryItem(
                            "assets/image/world.jpg", "Personlized Coaching"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              "2021 Special Ealry Birds Offer",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red[200],
                fontWeight: FontWeight.bold,
                decorationColor: Colors.red[200],
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "IDR50.000",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text("/month"),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 100, 198, 105),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                "Start 3 Days Free Trial",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "View all Plans",
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _CategoryItem(String path, String txt) {
    return Container(
      width: 140,
      height: 160,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Image.asset(
              path,
              width: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Text(txt.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
