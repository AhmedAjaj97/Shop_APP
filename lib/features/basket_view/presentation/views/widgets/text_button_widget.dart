import 'package:flutter/material.dart';
class ContinueTextButton extends StatelessWidget {
  const ContinueTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: (){},
        child: const Text("Continue shopping",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12
          ),
        ),
      ),
    );
  }
}
