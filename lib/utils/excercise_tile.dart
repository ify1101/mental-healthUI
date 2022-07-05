import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  final icon;
  final String excerciseName;
  final int numberOfExcercise;
  final color;

  const ExcerciseTile({Key? key,
    required this.icon,
    required this.excerciseName,
    required this.numberOfExcercise,
    required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(icon, color: Colors.white,)),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text( excerciseName, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    SizedBox(height: 3,),
                    //subtitie
                    Text(numberOfExcercise.toString() + ' ' + 'Excercises',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey),),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );

  }
}
