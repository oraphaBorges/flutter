import 'package:BorgitozApp/components/appdrawer,component.dart';
import 'package:flutter/material.dart';

class BlankView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        
      ),
    );
  }
}