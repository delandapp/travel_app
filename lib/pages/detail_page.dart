import 'package:flutter/material.dart';
import 'package:travelapp/class/travel.dart';

class DetailPage extends StatelessWidget {
  final Travel travel;
  DetailPage({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                const Spacer(),
                Text(travel.location),
                const SizedBox(width: 30,)
              ],
            ),
            Expanded(
              child: Hero(
                tag: travel.image,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(travel.image),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          travel.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          travel.price,
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        )
                      ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
