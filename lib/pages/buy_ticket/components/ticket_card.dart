import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/domain/utils/my_custom_cilp_path.dart';

class TicketCard extends StatelessWidget {
  final String destiny;
  final String price;
  const TicketCard({Key? key, required this.destiny, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomCilpPath(),
      child: Container(
        padding: const EdgeInsets.only(left: 32, right: 32),
        height: 250,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment(-1, 1),
                    child: Icon(
                      Icons.fiber_manual_record_outlined,
                      color: Colors.red,
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0, 1),
                    child: Icon(
                      Icons.flight,
                      color: Colors.red,
                    ),
                  ),
                  const Align(
                    alignment: Alignment(1, 1),
                    child: Icon(
                      Icons.fiber_manual_record_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 0.61),
                    child: DottedLine(
                      dashLength: 8,
                      dashColor: Colors.grey[700]!,
                      lineLength: 250,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'New York',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      '12h',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      destiny,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      '10:40am',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '12:40pm',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '10/02/2022, Terça',
                      style: TextStyle(color: Colors.grey[700], fontSize: 12),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '11/02/2022, Quarta',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            DottedLine(
              dashLength: 5,
              dashColor: Colors.grey[700]!,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text('American AirLiness'),
                ),
                Expanded(
                  child: Text(
                    price,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
