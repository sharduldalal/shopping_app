import 'package:flutter/material.dart';

class appBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0, // to remove the shadow under the app bar
          backgroundColor: Colors.black,
          title: InkWell(
            onTap: (){},
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
                onPressed: () {}),
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
                  leading: Icon(Icons.home , color: Colors.black,),
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
                onTap: (){},
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
      );
  }
  @override
  Size get preferredSize => new Size.fromHeight(preferredSize.height);
}
