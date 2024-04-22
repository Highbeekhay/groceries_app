import 'package:flutter/material.dart';
import 'package:flutter_rating_native/flutter_rating_native.dart';
import 'package:readmore/readmore.dart';

class OrangeDetails extends StatefulWidget {
  const OrangeDetails({super.key});

  @override
  State<OrangeDetails> createState() => _OrangeDetailsState();
}

class _OrangeDetailsState extends State<OrangeDetails> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

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
              color: Colors.green.shade50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Image(
                    image: AssetImage(
                      'images/orange4.png',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fresh Orange',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  FlutterRating(
                    mainAxisAlignment: MainAxisAlignment.start,
                    color: Colors.orange.shade600,
                    size: 25,
                    rating: 4,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$2.99',
                              style: TextStyle(
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            const TextSpan(
                              text: '/KG',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onLongPress: () {
                              resetCounter();
                            },
                            onPressed: () {
                              decrementCounter();
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              backgroundColor: Colors.grey.shade100,
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            '$counter KG',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              incrementCounter();
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              backgroundColor: Colors.green.shade600,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'Product Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ReadMoreText(
                    trimCollapsedText: 'Read More',
                    trimExpandedText: 'Show Less',
                    'Orange is a vibrant and juicy citrus fruit, known for its refreshing flavor and brigt color. With a tangy savory sweetness. It adds a burst of freshness to both sweet and savory dishes. The peel of orange is often used in cooking and baking to impart a zesty.',
                    moreStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    lessStyle: TextStyle(
                      color: Colors.black38,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Text(
                  'Total Price',
                ),
                Text(
                  '\$2.99',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(
                  Size(
                    300,
                    30,
                  ),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
                backgroundColor: const MaterialStatePropertyAll(
                  Colors.green,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
