import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String batchtext;
  final String url;
  final String seattext;
  final String daystext;
  final String title;

  const CustomCard({
    required this.batchtext,
    required this.url,
    required this.seattext,
    required this.daystext,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                url,
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                        top: 33,
                        bottom: 12
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 80,
                    child: Text(
                      batchtext,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      textAlign: TextAlign.center,


                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 80,

                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/assetimage.png',
                          width: 18,
                          height: 16,
                        ),
                        const SizedBox(width: 2),
                        Flexible(
                          child: Text(
                            seattext,
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 80,
                    child: Row(
                      children: [
                        const Icon(Icons.access_time, size: 14),
                        const SizedBox(width: 2),
                        Flexible(
                          child: Text(daystext, style: TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

            ),
            const Spacer(), 
            SizedBox(
              width: double.infinity,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'বিস্তারিত দেখি',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 16,

                  ),
                  iconAlignment: IconAlignment.end,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
