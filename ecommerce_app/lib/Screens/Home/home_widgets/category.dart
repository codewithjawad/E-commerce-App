import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      height: 230,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Row(
            children: [
              Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Text("See All",
                  style: TextStyle(fontSize: 16, color: Colors.brown))
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 230, 230, 230),
                  child: SizedBox(
                      height: 50,
                      child: Image.asset(
                        "assests/shirts.png",
                        color: Colors.brown,
                      )),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 230, 230, 230),
                  child: SizedBox(
                      height: 50,
                      child: Image.asset(
                        "assests/pants.png",
                        color: Colors.brown,
                      )),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 230, 230, 230),
                  child: SizedBox(
                      height: 50,
                      child: Image.asset(
                        "assests/jackets.png",
                        color: Colors.brown,
                      )),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 230, 230, 230),
                  child: SizedBox(
                      height: 50,
                      child: Image.asset(
                        "assests/shorts.png",
                        color: Colors.brown,
                      )),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: const Row(
              children: [
                Text(
                  "Flash Sale",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "All",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Newest",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Popular",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Men",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Women",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Winter",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
