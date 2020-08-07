import 'package:flutter/material.dart';
import 'package:shoppingapp/main.dart';

//pages
import 'package:shoppingapp/Pages/Home.dart';

class proDeatils extends StatefulWidget {
  final proDeatils_name; // for passing the values from the other file to this file
  final proDeatils_pic;
  final proDeatils_new_price;
  final proDeatils_old_price;
  final String selector1 =
      'Size'; //To be Taken from the firestore database can be controlled by the owner
  final String selector2 =
      'Quantity'; //To be Taken from the firestore database can be controlled by the owner
  final String selector3 =
      'item3'; //To be Taken from the firestore database can be controlled by the owner
  final String selector4 =
      'item4'; //To be Taken from the firestore database can be controlled by the owner
  final String selector5 =
      'item5'; //To be Taken from the firestore database can be controlled by the owner
  final String selector6 =
      'item6'; //To be Taken from the firestore database can be controlled by the owner
  final String description =
      'Our most popular Echo is now even better. With a new speaker and design, Echo Dot is a voice-controlled smart speaker with Alexa, perfect for any room. Just ask for music, news, information, and more. You can also call almost anyone and control compatible smart home devices with your voice. Use your voice to play a song, artist, or genre through Amazon Music, Apple Music, Spotify, Pandora, and others. With compatible Echo devices in different rooms, you can fill your whole home with music.'; //To be Taken from the firestore database can be controlled by the owner
  final String brand =
      'Product Brand'; //To be Taken from the firestore database can be controlled by the owner
  final String ratings =
      '4'; //To be calculated by taking average of the ratings given by different costumers
  proDeatils({
    this.proDeatils_name, // constructor of the proDetails
    this.proDeatils_pic,
    this.proDeatils_new_price,
    this.proDeatils_old_price,
    //this.selector1,//to be used when taking data from the database
    //this.selector2,//to be used when taking data from the database
    //this.selector3,//to be used when taking data from the database
    //this.selector4,//to be used when taking data from the database
    //this.selector5,//to be used when taking data from the database
    //this.selector6,//to be used when taking data from the database
  });

  @override
  _proDeatilsState createState() => _proDeatilsState();
}

class _proDeatilsState extends State<proDeatils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text(widget.proDeatils_name),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          },),

          //new IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.black,
                child: Image.asset(widget.proDeatils_pic),
              ),
              //Discount here
              /* header: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text("Discount"),// Add discount here if needed
                ), use title and then column to add the discount to the right hand side
              ),*/
              /*footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.proDeatils_name),
                  title: new Column(
                    children: <Widget>[
                      Expanded(
                        child: new Text("${widget.proDeatils_new_price}"),
                      ),
                      Expanded(
                        child: new Text("${widget.proDeatils_old_price}"),
                      )
                    ],
                  ),
                ),
              ),*/
            ),
          ),
          new Container(
            color: Colors.white,
            //height: 300.0,
            child: ListTile(
              title: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // To left align the children to the left
                children: <Widget>[
                  Text(
                    "Product name : ${widget.proDeatils_name}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text("New Price : Rs ${widget.proDeatils_new_price}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  Text(
                    "Old Price : Rs ${widget.proDeatils_old_price}",
                    style: TextStyle(
                        /*fontWeight: FontWeight.bold,*/
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text(
                    "Brand : ${widget.brand}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ratings : ${widget.ratings}/5",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add more product details here
                  /*Expanded(
                    child: new Text("${widget.proDeatils_old_price}"),
                  ),
                  Expanded(
                    child: new Text("${widget.proDeatils_new_price}"),
                  )*/
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return new AlertDialog(
                                    title: new Text(widget.selector1),
                                    content: new Text(
                                        'Choose the ${widget.selector1}'),
                                    actions: <Widget>[
                                      new MaterialButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(context);
                                          },
                                          child: new Text('Close')),
                                    ],
                                  );
                                });
                          },
                          color: Colors.white,
                          textColor: Colors.grey,
                          elevation: 0.2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(widget.selector1),
                              ),
                              Expanded(
                                child: new Icon(Icons.arrow_drop_down),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return new AlertDialog(
                                    title: new Text(widget.selector2),
                                    content: new Text(
                                        'Choose the ${widget.selector2}'),
                                    actions: <Widget>[
                                      new MaterialButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(context);
                                          },
                                          child: new Text('Close')),
                                    ],
                                  );
                                });
                          },
                          color: Colors.white,
                          textColor: Colors.grey,
                          elevation: 0.2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(widget.selector2),
                              ),
                              Expanded(
                                child: Icon(Icons.arrow_drop_down),
                              )
                            ],
                          ),
                        ),
                      ),
                      /*Expanded(
                        child: MaterialButton(
                          onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(widget.selector3),
                              ),
                              Expanded(
                                child: Icon(Icons.arrow_drop_down),
                              )
                            ],
                          ),
                        ),
                      ),*/
                      //======================== Add more expanded to add more drop down options =======================
                    ],
                  ),
                  /*new Row(
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            showDialog(context: context,
                                builder: (context) {
                                  return new AlertDialog(
                                    title: new Text(widget.selector3),
                                    content: new Text(
                                        'Choose the ${widget.selector3}'),
                                    actions: <Widget>[
                                      new MaterialButton(onPressed: () {},
                                        child: new Text('Close'),)
                                    ],
                                  );
                                });
                          },
                          color: Colors.white,
                          textColor: Colors.grey,
                          elevation: 0.2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(widget.selector3),
                              ),
                              Expanded(
                                child: new Icon(Icons.arrow_drop_down),
                              )
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.grey,
                          elevation: 0.2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(widget.selector4),
                              ),
                              Expanded(
                                child: Icon(Icons.arrow_drop_down),
                              )
                            ],
                          ),
                        ),
                      )
                      //======================== Add more expanded to add more drop down options =======================
                    ],
                  ),*/
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.white,
                          elevation: 0.2,
                          child: Icon(Icons.add_shopping_cart),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.white,
                          elevation: 0.2,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
//=================Buy Now==============
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.black,
                          elevation: 0.2,
                          child: Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          new ListTile(
            title: Text('Description'),
            subtitle: Text(widget.description),
          ),
          Divider(
            color: Colors.black,
          ),
          new ListTile(
            title: Text('Coustumers Reviews'),
            subtitle: Text('Comming Soon....'),
          )
          /*new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("safdaj"),),
            ],
          )*/
          ,

          //Similar Products First will be made to run ny using
          //simple search feature for searching products with similar name or parts of the name
          //afterwards machine learning algorithms will be used or simpke algorithms will be used

          //new keyword was made optional in Dart 2.0

          Divider(
            color: Colors.black,
          ),

          Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Similar Products',
                style: TextStyle(fontSize: 16.0),
              )),

          Container(
            height: 340,
            child: similarProducts(),
          ),
        ],
      ),
    );
  }
}

class similarProducts extends StatefulWidget {
  @override
  _similarProductsState createState() => _similarProductsState();
}

class _similarProductsState extends State<similarProducts> {
  @override
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
          return similarPro(
            proDetails_name: p_list1[index]['name'],
            // same as the name given in  the p_list
            proDetails_pic: p_list1[index]['picture'],
            proDetails_old_price: p_list1[index]['old_price'],
            proDetails_new_price: p_list1[index]['price'],
          );
        });
  }
}

class similarPro extends StatelessWidget {
  final proDetails_name;
  final proDetails_pic;
  final proDetails_old_price;
  final proDetails_new_price;

  /*final proDeatils_name; // for passing the values from the other file to this file
  final proDeatils_pic;
  final proDeatils_new_price;
  final proDeatils_old_price;
*/
  similarPro({
    //this is a constructor for initializing the variables
    //this is used to make it compulsory to define their values every tine the app is run
    this.proDetails_name,
    this.proDetails_pic,
    this.proDetails_old_price,
    this.proDetails_new_price,
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
                        proDeatils_name: proDetails_name,
                        proDeatils_pic: proDetails_pic,
                        proDeatils_new_price: proDetails_new_price,
                        proDeatils_old_price: proDetails_old_price,
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
                        child: Text(
                          proDetails_name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Rs ${proDetails_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  /*child: ListTile(
                    leading: Text(
                      proDetails_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text("Rs$proDetails_new_price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red)),
                    subtitle: Text(
                      "Rs$proDetails_old_price",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),*/
                ),
                child: Image.asset(
                  proDetails_pic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
