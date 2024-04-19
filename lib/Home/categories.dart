import 'package:flutter/material.dart';
import 'package:groceries_app/Home/Category/dairy.dart';
import 'package:groceries_app/Home/Category/fruits.dart';
import 'package:groceries_app/Home/Category/meat.dart';
import 'package:groceries_app/Home/Category/veggies.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                      color: Colors.black12,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      60,
                    ),
                    topRight: Radius.circular(
                      60,
                    ),
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Veggies(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green.shade50,
                        radius: 40,
                        child: const Image(
                          height: 1000,
                          width: 40,
                          image: AssetImage(
                            'images/picture1.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Veggies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                      color: Colors.black12,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      60,
                    ),
                    topRight: Radius.circular(
                      60,
                    ),
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Fruits(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green.shade50,
                        radius: 40,
                        child: const Image(
                          height: 1000,
                          width: 40,
                          image: AssetImage(
                            'images/orange.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Fruits',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                      color: Colors.black12,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      60,
                    ),
                    topRight: Radius.circular(
                      60,
                    ),
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Meat(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green.shade50,
                        radius: 40,
                        child: const Image(
                          height: 1000,
                          width: 40,
                          image: AssetImage(
                            'images/meat.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Meat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                      color: Colors.black12,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      60,
                    ),
                    topRight: Radius.circular(
                      60,
                    ),
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dairy(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green.shade50,
                        radius: 40,
                        child: const Image(
                          height: 1000,
                          width: 40,
                          image: AssetImage(
                            'images/dairy.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Dairy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
