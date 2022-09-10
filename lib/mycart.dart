import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Cart',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          buildPadding(
            image: 'assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
            title: 'Bell pepper Red',
            quantity: '1kg, price',
            price: '4.99',
          ),
          buildContainer(),
          buildPadding(
            image: 'assets/images/pngfuel 16.png',
            title: 'Egg Chicken Red',
            quantity: '4pcs, price',
            price: '1.99',
          ),
          buildContainer(),
          buildPadding(
            image: 'assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3(1).png',
            title: 'Organic Bananas',
            quantity: '12kg, price',
            price: '3.00',
          ),buildContainer(),
          buildPadding(
            image: 'assets/images/pngfuel 3.png',
            title: 'Ginger',
            quantity: '250gm, price',
            price: '2.99',
          ),

        ],
      ),

    );
  }

  Padding buildPadding({
    required String image,
    required String title,
    required String quantity,
    required String price,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Image(
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(width: 20),
                    IconButton(

                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  quantity,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        icon: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.grey),
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.minimize,
                            color: Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            counter--;
                          });
                        },
                      ),
                    ),
                    Text(
                      '$counter',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Text(
                      '\$ $price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget buildContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
            width: 1.0,
            height: 1.0,
            color: Colors.grey,
          ),
    );
  }
}
