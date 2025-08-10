import 'package:flutter/material.dart';

void goTo(context, Widget screen)=>  Navigator.push(context,
    MaterialPageRoute(
        builder: (context) => screen
    )
);