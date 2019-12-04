import 'package:flutter/material.dart';
import 'package:ecomerce_flutter_app/pages/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});


  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
            },
          child: Text('Fashapp'),
        ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: (){}),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300 ,
              child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                         child: new Text("\$${widget.product_detail_old_price}",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),


                        ),

                        Expanded(
                          child: new Text("\$${widget.product_detail_new_price}",style: TextStyle(color: Colors.red)),


                        ),



                      ],
                    ),

                  ),
                ),
            ),
          ),
          // ================= First Buttons ===============
          Row(

              children: <Widget>[
                // ============ The Size Button  ========================
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the size"),
                          actions: <Widget>[
                            new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                              child: new Text("Close"),
                            )
                          ],
                        );


                      }
                      );
                    },



                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,

                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Size"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),

                  ),
                ),

                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new Text("Color"),
                              content: new Text("Choose a Color"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );


                          }
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,

                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Color"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),

                  ),
                ),

                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new Text("Quantity"),
                              content: new Text("Choose the Quantity"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );


                          }
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,

                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Qty"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),



                      ],
                    ),

                  ),
                ),




              ],
            ),

          // ================= Second Buttons ===============
          Row(

            children: <Widget>[
              // ============ The Buy Button  ========================
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now"),


                ),

              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Todos os campos do cabeçalho (acima) deverão ser devidamente preenchidos O aluno deverá, obrigatoriamente, utilizar este formulário para realizar a atividad Esta é uma atividade INDIVIDUAL. Caso identificado plágio de colegas o trabalho de ambos será zerado.Para realizar esta atividade acesse o ícone “Atividade de Estudos – MAPA” siga as orientações e atente-se ao que está sendo solicitado.Utilizando este formulário, realize sua atividade salve em seu computador e envie em forma de anexoProcure "),
          ),
          Divider(),
          new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name",style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name),
                ),
              ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand",style: TextStyle(color: Colors.grey),),),
              // REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              ),
            ],
          ),

          // ADD PRODUCT CONDITION
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),
              ),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
          ),
          // Similar Products Settings

          new Container(
            height: 340,
            child: Similar_products(),
          ),


        ],
      ),
    );
  }
}


class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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


  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }

}
class Similar_single_prod extends StatelessWidget
{

  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;
  Similar_single_prod({
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


