import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {

  final Image image;

  const EmotionFace({
    Key? key,
    required this.image,

  }


      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(

        color: Colors.blue[500],
        borderRadius: BorderRadius.circular(12),

      ),
      padding: EdgeInsets.all(12),
      child: image,
    );

  }
}
