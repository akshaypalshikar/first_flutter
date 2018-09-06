import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
              print('working');
            },
          ),
        ),
        Products(_products)
      ],
    );
  }
}