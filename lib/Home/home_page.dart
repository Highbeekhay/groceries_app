import 'package:flutter/material.dart';
import 'package:groceries_app/Home/categories.dart';
import 'package:groceries_app/Home/popular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.green,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green.shade400,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white70,
                            ),
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green.shade400,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Lagos, Nigeria',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          hintText: 'Search Your Groceries',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.search_rounded),
                            color: Colors.green,
                            onPressed: () {},
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Get 40% discount\non your first order\nfrom app.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.green.shade300,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(
                        'images/picture1.png',
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Categories(),
            const SizedBox(
              height: 50,
            ),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
