

import 'package:flutter/cupertino.dart';

class AppLayout {
  getSize(BuildContext context) async {
    return MediaQuery.of(context).size;
  }
}