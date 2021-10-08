import 'package:appbar_app/home.dart';
import 'package:appbar_app/notification.dart';
import 'package:appbar_app/setting.dart';
import 'package:appbar_app/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  //late TabController _tabController;

  @override
  void initState() {
    //_tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const MySearch(),
            centerTitle: true,
            elevation: 8,
            shadowColor: Colors.amber,
            toolbarOpacity: .7,
            /*shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),*/
            //leading: MenuDrawer(), //const Icon(Icons.menu),
            actions: [
              IconButton(
                onPressed: () {
                  'Search Working';
                },
                icon: const Icon(Icons.search),
              ),
              //const Icon(Icons.account_circle_rounded),
              const Icon(Icons.more_vert),
            ],
            //bottom: const TabBar(
            //  //controller: _tabController,
            //  tabs: [
            //    Tab(
            //      icon: Icon(Icons.person),
            //      text: 'Person',
            //    ),
            //    Tab(
            //      icon: Icon(Icons.account_balance),
            //      text: 'Balance',
            //    ),
            //    Tab(
            //      icon: Icon(Icons.shopping_cart),
            //      text: 'Cart',
            //    ),
            //  ],
            //),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text('Ponnow'),
                  accountEmail: Text('ponnow.nlr@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    //child: Image.asset('assets/images/ponnow.jpg'),
                    //child: Image.asset('assets/images/ponnow.jpg'),
                    backgroundImage: AssetImage('assets/images/ponnow.jpg'),
                  ),
                  decoration: BoxDecoration(color: Colors.blueGrey),
                ),
                //const DrawerHeader(
                //  decoration: BoxDecoration(color: Colors.blueGrey),
                //  child: Text('Welcome'),
                //),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    //print('Home Page');
                    Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                      return const HomePage();
                    }));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text('Notification'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return const NotificationPage();
                    }));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Setting'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (csx) {
                      return const SettingPage();
                    }));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.login),
                  title: const Text('Sign In'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (csx) {
                      return const SignIn();
                    }));
                  },
                )
              ],
            ),
          ),
          body: const TabBarView(
            //controller: _tabController,
            children: [
              Center(child: Text('Person')),
              Center(child: Text('Accounts Balance')),
              Center(child: Text('Shopping Cart')),
            ],
          ),
          bottomNavigationBar: const Material(
            color: Colors.blueGrey,
            child: TabBar(
              //controller: _tabController,
              labelColor: Colors.yellowAccent,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.person,
                    size: 20,
                  ),
                  text: 'Person',
                ),
                Tab(
                  icon: Icon(
                    Icons.account_balance,
                    size: 20,
                  ),
                  text: 'Balance',
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 20,
                  ),
                  text: 'Cart',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MySearch extends StatefulWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Search Product',
        border: OutlineInputBorder(borderSide: BorderSide.none),
        //suffixIcon: Icon(Icons.search),
      ),
    );
  }
}
