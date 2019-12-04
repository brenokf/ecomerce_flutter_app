import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 50,
      "size":"M",
      "color":"Black",
      "quantity":1,
    },

    {
      "name": "Shoes",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size":"8",
      "color":"Red",
      "quantity":1,
    }

  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
      itemBuilder: (context,index){

          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qyt: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_pricture: Products_on_the_cart[index]["picture"],
          );
      });
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qyt;

  Single_cart_product({
     this.cart_prod_name,
     this.cart_prod_pricture,
     this.cart_prod_price,
     this.cart_prod_size,
     this.cart_prod_color,
     this.cart_prod_qyt,

});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //==============LEADING SECTION =================
        leading: new Image.asset(cart_prod_pricture,width: 100.0,height: 100.0,),
        //==============TITLE SECTION======================
        title: new Text(cart_prod_name),
        //==============SUBTITLE SECTION===================
        subtitle: new Column(
          children: <Widget>[
            // ROW INSIDE THE COLLUNM
            new Row(
              children: <Widget>[
                Padding(
                  //==============THIS IS SECTION SIZE PRODUCTS ======================
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size"),
                ),
               Padding(
               padding: const EdgeInsets.all(4.0),
               child: new Text(cart_prod_size,style: TextStyle(color: Colors.red),),
               ),

                //============== This section of for the product color ================================

                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: new Text("Size"),),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color,style: TextStyle(color: Colors.red),),



                ),

              ],
            ),

            //====================== THIS SECTION IS FOR THE PRODUCT PRICE ==================================

            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
              ),
              ),
            ),
          ],
        ),
          trailing: FittedBox(
           fit: BoxFit.fill,
            child: Column(
                children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up,color: Colors.red),iconSize: 38, onPressed: () {}),
            Text("$cart_prod_qyt",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.red,),iconSize: 38, onPressed: (){}),
            ],
            ),

        ),
      ),
    );

  }
}

