import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String localName;
  final String price;
  final String localImage;
  const PlaceCard({
    Key? key,
    required this.localName,
    required this.localImage,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8, top: 8),
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      height: MediaQuery.of(context).size.height * .2,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(localImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: SizedBox(
          height: 40,
          width: double.infinity,
          child: Row(
            children: [
              Text(
                localName,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    '\$$price',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
