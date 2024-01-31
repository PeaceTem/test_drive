import 'package:flutter/material.dart';




class UserDetails extends StatelessWidget{
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context){

    const TextStyle textStyleBold = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

    const TextStyle textStyleSmall = TextStyle(fontSize: 14, fontWeight: FontWeight.w200);

    return const Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ClipOval(
                    child: //Image.asset("images/profile_picture.jpg", fit: BoxFit.cover),)
                    Icon(
                      Icons.face_rounded,
                      size: 80,
                      color: Color.fromARGB(255, 14, 89, 218))
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "BrainSTEM math",
                        style: textStyleBold,
                      ),
                      Text(
                        "@brainstem_math",
                        style: textStyleSmall,
                      ),
                    ],
                  )
                ),
              ],
            )
          );
  }
}


