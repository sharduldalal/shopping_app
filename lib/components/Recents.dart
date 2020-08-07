import 'package:flutter/material.dart';
import 'package:shoppingapp/components/ProDetails.dart';

class RecentProducts extends StatefulWidget {
  @override
  _RecentProductsState createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  var p_list1 = [
    //creating a key value pairs
    {
      'name': 'product1', //key : Value Pair
      'picture': 'Images/image1.jpg',
      'old_price': 120,
      'price': 140,
    },
    {
      'name': 'product2', //key : Value Pair
      'picture': 'Images/image2.jpg',
      'old_price': 140,
      'price': 50,
    },
    {
      'name': 'product3', //key : Value Pair
      'picture': 'Images/image3.jpg',
      'old_price': 180,
      'price': 60,
    },
    {
      'name': 'product4', //key : Value Pair
      'picture': 'Images/image4.jpg',
      'old_price': 190,
      'price': 200,
    },
    {
      'name': 'product1', //key : Value Pair
      'picture': 'Images/image1.jpg',
      'old_price': 120,
      'price': 140,
    },
    {
      'name': 'product2', //key : Value Pair
      'picture': 'Images/image2.jpg',
      'old_price': 140,
      'price': 50,
    },
    {
      'name': 'product3', //key : Value Pair
      'picture': 'Images/image3.jpg',
      'old_price': 180,
      'price': 60,
    },
    {
      'name': 'product4', //key : Value Pair
      'picture': 'Images/image4.jpg',
      'old_price': 190,
      'price': 200,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: p_list1.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        // to limit the number the number of columns in the grid view
        itemBuilder: (BuildContext context, int index) {
          return single_pro(
            pro_name: p_list1[index]['name'],
            // same as the name given in  the p_list
            pro_pic: p_list1[index]['picture'],
            pro_old_price: p_list1[index]['old_price'],
            pro_new_price: p_list1[index]['price'],
          );
        });
  }
}

class single_pro extends StatelessWidget {
  final pro_name;
  final pro_pic;
  final pro_old_price;
  final pro_new_price;

  single_pro({
    //this is a constructor for initializing the variables
    //this is used to make it compulsory to define their values every tine the app is run
    this.pro_name,
    this.pro_pic,
    this.pro_old_price,
    this.pro_new_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new proDeatils(
                        // passing the values to the proDetails function in  the ProDetails file
                        proDeatils_name: pro_name,
                        proDeatils_pic: pro_pic,
                        proDeatils_new_price: pro_new_price,
                        proDeatils_old_price: pro_old_price,
                      ))),

              /*onTap:()=>(x+y);is smae as a function with a return statement
                  onTap: () {
          return (x + y);
          }, */
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(pro_name, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16.0,),),
                      ),
                      Expanded(
                        child: Text("Rs ${pro_new_price}", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16.0), textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                  /*child: ListTile(
                    leading: Text(
                      pro_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text("Rs$pro_new_price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red)),
                    subtitle: Text(
                      "Rs$pro_old_price",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),*/
                ),
                child: Image.asset(
                  pro_pic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
