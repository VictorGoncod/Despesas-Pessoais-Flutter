import 'dart:io';
import 'package:flutter/Cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  //const AdaptativeButton({ Key? key })// : super(key: key);

  final String label;
  final Function() onPressed;

  AdaptiveButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            color: Theme.of(context).colorScheme.primary,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : RaisedButton(
            color: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.background,
            child: Text(label),
            onPressed: onPressed,
          );
  }
}
