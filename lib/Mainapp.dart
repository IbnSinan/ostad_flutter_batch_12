import 'package:flutter/material.dart';
import 'package:modlue_13_assignment/CustomCard.dart';
import 'dummydata.dart';


class Mainapp extends StatelessWidget {
  const Mainapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5,
        ),
        itemBuilder: (context, index) {
          return CustomCard(
            batchtext: dummyData[index].batchtext,
            url:
                dummyData[index].url,
            seattext: dummyData[index].seattext,
            daystext: dummyData[index].daystext,
            title: dummyData[index].title,
          );
        },
        itemCount: 4,
      ),
    );
  }
}
