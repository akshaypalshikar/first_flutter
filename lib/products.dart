import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context,int index){
    return Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(products[index]),
                    ],
                  ),
                ); 
  }

  Widget _buildProductList(){
    Widget productCards;
      if(products.length>0){
        productCards = ListView.builder(
          itemBuilder: _buildProductItem,
          itemCount: products.length
        );
      }
      else{
        productCards = Center(child: Text("No products found, please add products."));
      }
      return productCards;
  }
  

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] Build');
    return _buildProductList();
  }
}
