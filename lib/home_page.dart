import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 29, 29, 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Bitch!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Avidvesha",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.account_box_rounded,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
