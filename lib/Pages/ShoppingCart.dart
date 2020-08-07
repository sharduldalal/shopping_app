import 'package:flutter/material.dart';
import 'package:shoppingapp/components/CartItems.dart';
import 'package:shoppingapp/main.dart';

//pages
import 'Home.dart';

class shoppingCart extends StatefulWidget {
  @override
  _shoppingCartState createState() => _shoppingCartState();
}

class _shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text("Carts"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          },),

          //new IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),

      body:  cartItems(),

      bottomNavigationBar: Container(
        color: Colors.black,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: Text("Toatl Amount :", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text("2300", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),//to be calculated by retrieving data of the added items from the database using their respective ids
            ),),
            Expanded(
            child: MaterialButton(onPressed: (){},
            child: Text("Place Order", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold) ,),
            color: Colors.white,),

            ),
          ],
        ),
      ),

    );
  }
}
