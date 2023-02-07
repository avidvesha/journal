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
      // backgroundColor:
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 29, 29, 29),
                ),
              ),
            ),
            Padding(
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
                          "Hello!",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Avidvesha",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.account_box_rounded,
                      color: Colors.black,
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
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black,),
            label: ''
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite, color: Colors.black,),
          //   label: ''
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.black,),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black,),
            label: ''
          ),
        ],
      ),
    );
  }
}
