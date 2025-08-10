import 'package:flutter/material.dart';
class  DefaultTextBtn extends StatelessWidget {
  const DefaultTextBtn ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Already Have An Account?"),
        TextButton(onPressed: (){}, child: Text("Login"))
      ],
    );
  }
}
