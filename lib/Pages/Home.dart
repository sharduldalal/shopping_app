import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shoppingapp/components/Recents.dart';

//importing the components of the app
import 'package:shoppingapp/components/Categories.dart';
import 'package:shoppingapp/components/ProDetails.dart';
import 'package:shoppingapp/components/AppBar.dart';

//pages
import 'package:shoppingapp/Pages/ShoppingCart.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('Images/image1.jpg'),
          AssetImage('Images/image2.jpg'),
          AssetImage('Images/image3.jpg'),
        ],
        autoplay: false,
//animationCurve: Curves.fastOutSlowIn,
//animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );
    return Scaffold(
//backgroundColor: Colors.black,
      /*appBar: PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: appBar1(),
    ),*/
      appBar: new AppBar(
        elevation: 0.0, // to remove the shadow under the app bar
        backgroundColor: Colors.black,
        title: InkWell(
          onTap: () {},
          child: Text('ShoppingApp'),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => new shoppingCart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
// header to reformat the dart file shortcut is command + shift + l + option
            new UserAccountsDrawerHeader(
              accountName: Text('Shardul Dalal'),
              accountEmail: Text('sharduldalal999@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.black54,
              ),
            ),
//body of drawer
            InkWell(
//to make the icon home a clickable button
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.black,),
                title: Text('Home'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.shopping_basket, color: Colors.black),
                title: Text('Orders'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => shoppingCart()));
              },
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.black),
                title: Text("Cart"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.dashboard, color: Colors.black),
                title: Text('Categories'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Account'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.favorite, color: Colors.black),
                title: Text('Favourites'),
              ),
            ),
            Divider(color: Colors.black),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text('About'),
              ),
            )
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
//color: Colors.white /*.withOpacity(.9)*/
              ),
            ),
          ),
//opacity can be added
// Categories view
          Horizontal_listView(),
          new Container(
            height: 10.0,
          ),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Recents',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
//Reccents
          Container(
            height: 320.0,
            child: RecentProducts(),
          ),
        ],
      ),
    );
  }
}