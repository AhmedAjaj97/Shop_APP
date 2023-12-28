import 'package:flutter/material.dart';
class CustomButtons extends StatelessWidget {
  const CustomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(onPressed: (){},
        child: Text("Check out",style: TextStyle(fontSize: 14),),
        color: Colors.teal,
        height: 34,


        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none
        ),
      ),
    );
  }
}
