import'package:flutter/material.dart';


import 'package:ecomerce_flutter_app/pages/product_details.dart';
import 'package:ecomerce_flutter_app/pages/kart.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 85,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 200,
      "price": 120,
    },
    {
      "name": "Black Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 140,
      "price": 90,
    },
    {
      "name": "white shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 165,
      "price": 70,
    },
    {
      "name": "blue skt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 120,
      "price": 90,
    },



  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        }
        );
  }
}

class
  Single_prod extends StatelessWidget
{

  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;
  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,

  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new ProductDetails(
                // here we are passing the values of the product to the product details page
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price,
                product_detail_picture: prod_pricture,

              ))),



            child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),

                      ),
                      new Text("\$${prod_price}",style: TextStyle(color: Colors.red),)
                    ],
                  ),
                ),
                child: Image.asset(
                  prod_pricture,
                  fit: BoxFit.cover,
                )

            ),

            ),
          )),

    );
    }
  }




