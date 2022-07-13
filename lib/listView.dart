import 'package:flutter/material.dart';

class listofTile extends StatelessWidget {

  final icon;
  final String exercisesname;
  final int noOfExrcises;
  final color;


  const listofTile({
    Key? key,
    required this.icon,
    required this.exercisesname,
    required this.noOfExrcises,
    required this.color,
  }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16)
        ),

        child: Row(

          children: [
            ClipRRect(
              borderRadius:BorderRadius.circular(12),
              child: Container(

                child: Icon(icon,color: Colors.white,),
                padding: EdgeInsets.all(16),
                color: color,

              ),
            ),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exercisesname,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                SizedBox(height: 5,),
                Text("exercises "+noOfExrcises.toString(),style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 14,
                ),),
              ],
            ),

          ],
        ),

      ),
    );
  }
}
