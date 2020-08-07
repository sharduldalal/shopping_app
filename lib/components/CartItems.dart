import 'package:flutter/material.dart';

//cart items import
import 'package:shoppingapp/components/CartItems.dart';

class cartItems extends StatefulWidget {
  @override
  _cartItemsState createState() => _cartItemsState();
}

class _cartItemsState extends State<cartItems> {
  var itemsInCart = [
    {
      "name": "Echo Dot",
      "picture": "Images/image1.jpg",
      "price": "80",
      "size": "l",
      "quantity": "2"
    },
    {
      "name": "Echo Dot",
      "picture": "Images/image2.jpg",
      "price": "90",
      "size": "l",
      "quantity": "2"
    },
    {
      "name": "Echo Dot",
      "picture": "Images/image3.jpg",
      "price": "20",
      "size": "l",
      "quantity": "2"
    },
    {
      "name": "Echo Dot",
      "picture": "Images/image4.jpg",
      "price": "8000000",
      "size": "m",
      "quantity": "2"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsInCart.length,
      itemBuilder: (context, index) {
        return singleCartItem(
          cartProName: itemsInCart[index]["name"],
          cartProPicture: itemsInCart[index]["picture"],
          cartProPrice: itemsInCart[index]["price"],
          cartProSize: itemsInCart[index]["size"],
          cartProQuantity: itemsInCart[index]["quantity"],
        );
      },
    );
  }
}

class singleCartItem extends StatelessWidget {
  final cartProName;
  final cartProPicture;
  final cartProPrice;
  final cartProSize;
  final cartProQuantity;

  singleCartItem({
    this.cartProName,
    this.cartProPicture,
    this.cartProPrice,
    this.cartProSize,
    this.cartProQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //!!!!!!!!!!!  For Picture !!!!!!!!!!!!!!!!!!!!!!
        leading: Container(
            child: Image.asset(cartProPicture, width: 80.0, height: 80.0,)),
        title: Text(cartProName),
        //!!!!!!!!!!!! Info section for the products on the cart !!!!!!!!!!!!!!!!!!!
        subtitle: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //!!!!!!!!!!!!!!!!  product size !!!!!!!!!!!!!!!!!
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Size :     $cartProSize"),
                ),
                //!!!!!!!!!!!!!!!!! product quantity !!!!!!!!!!!!!!!
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Quantity :     $cartProQuantity"),
                ),
              ],
            ),
            //!!!!!!!!!!!! For Price !!!!!!!!!!!!!!
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Price :     $cartProPrice", style: TextStyle(color: Colors.black),),
              ),
            ),
          ],
        ),
        trailing: Column(
          children: <Widget>[
            //!!!!!!!!!!! Get The Index of list tile and pass it to the function to delete the item from the cart in the database !!!!!!!!!!!!!!!!
            new IconButton(icon: Icon(Icons.delete), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
