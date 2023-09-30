//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../models/toilet.dart';

class ToiletListItem extends StatelessWidget {
  final Toilet toilet;

  const ToiletListItem({
    super.key,
    required this.toilet,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.home,
              size: 20.0,
            ),
            Expanded(
              child: Text(
                toilet.name,
                style: TextStyle(fontSize: 15.0, color: Colors.cyan),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    if(toilet.point>3)
                      Text('GOOD'),
                    for(var i=0;i<toilet.point.floor() ;i++)
                      Icon(Icons.star),
                    Text(toilet.point.toString())
                  ],
                ),
                Text(
                  toilet.distance.toString(),
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}