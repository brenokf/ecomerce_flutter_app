import 'package:flutter/material.dart';

//my Imports
import 'file:///C:/Users/breno/Apple/flutterProject/ecomerceapp/ecomerce_flutter_app/lib/components/cart_products.dart';

class kart extends StatefulWidget {
  @override
  _kartState createState() => _kartState();
}

class _kartState extends State<kart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
        ],
      ),
      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total: "),
              subtitle: new Text("\$230"),
            ),),
            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check out",style: TextStyle(color: Colors.white),),
              color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
