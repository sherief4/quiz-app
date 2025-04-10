import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Platform.isIOS
              ? const CupertinoActivityIndicator()
              : CircularProgressIndicator(
                color: color ?? ColorsManager.primaryColor,
              ),
    );
  }
}
