import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff000015,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text(
          'Order',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: const Color(
                    0xffC67C4F,
                  ),
                ),
                width: 300.w,
                height: 50.h,
                child: const Column(
                  children: [
                    Text(
                      'Deliver',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Delivery Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Change',
                      style: TextStyle(
                        color: Color(0xffC67C4F),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 290.w,
                height: 50.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    fillColor: const Color(0xff151522),
                    filled: true,
                    hintText: '12/3 Baganbari Mirpur Dhaka 1212',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Note:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 290.w,
                height: 50.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    fillColor: const Color(0xff151522),
                    filled: true,
                    hintText: 'Type something',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Item In Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xffC67C4F),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const listfood(),
            const listfood(),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                'Payment Summary',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
            const prices(),
            Center(
              child: SizedBox(
                width: 300.w,
                height: 50.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    backgroundColor: const Color(
                      0xffC67C4F,
                    ),
                    shadowColor: const Color(
                      0xffC67C4F,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Confirm \$ 17.05',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class prices extends StatelessWidget {
  const prices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
              //const Spacer(),
              Text(
                '\$ 15.55',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class listfood extends StatelessWidget {
  const listfood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: 50.w,
            height: 50.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                20,
              ),
              child: Image.asset(
                'images/10.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Decaf Coffee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
              ),
            ),
            const Text(
              'with Chocolate',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/minus.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Center(
          child: Text(
            '2',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.sp,
            ),
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/plus.png',
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
      ],
    );
  }
}
