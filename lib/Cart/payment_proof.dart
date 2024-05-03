import 'package:flutter/material.dart';

class PaymentProof extends StatelessWidget {
  const PaymentProof({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              height: 200,
              width: 500,
              image: AssetImage(
                'images/payment successful.png',
              ),
            ),
            const Text(
              'Order Successful',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your order #9685364 is successfully placed',
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(
                  Size(
                    250,
                    45,
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Colors.green,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Track My Order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.white,
                ),
                side: MaterialStatePropertyAll(
                  BorderSide(
                    color: Colors.green,
                    width: 1.5,
                  ),
                ),
                fixedSize: MaterialStatePropertyAll(
                  Size(
                    250,
                    45,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go Back',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
