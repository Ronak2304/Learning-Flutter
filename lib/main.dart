import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: "App ka title",
      // theme: ThemeData.dark(),
      home: PehlaApp()
  ));
}

// Scaffold is used to create the structure of the app
class PehlaApp extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],

          // leading: IconButton(
          //   onPressed: (){}, 
          //   icon: Icon(Icons.menu_outlined)),
          ),
        // body: Center(child: Text("Body "),),
        body:  
          ListView(
            padding: EdgeInsets.only(bottom: 80),
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 153, 178, 221),
                  child: Text("Royal Enfield", 
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => royalEnfield()));
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 183, 243, 235),
                  child: Text("Bajaj",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bajaj()));
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 233, 124, 124),
                  child: Text("Honda",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => honda()));
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 233, 213, 147),
                  child: Text("Yamaha",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => yamaha()));
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 223, 185, 143),
                  child: Text("TVS",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => tvs()));
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 156, 211, 142),
                  child: Text("Suzuki",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => suzuki()));
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 214, 143, 214),
                  child: Text("KTM",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ktm()));
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  color: const Color.fromARGB(255, 200, 172, 223),
                  child: Text("Hero",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => hero()));
                },
              ),
            ],
          ),
   

              // Container(
              //   padding: EdgeInsets.all(20),
              //   width: 200,
              //   color: const Color.fromARGB(255, 29, 45, 73),
              //   child: Text("honda"),
              // ),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   width: 200,
              //   color: const Color.fromARGB(255, 18, 62, 138),
              //   child: Image.asset('Hot-wheels-car.jpg'),
              // ),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   width: 200,
              //   color: const Color.fromARGB(255, 170, 200, 253),
              //   child: Text("tvs"),
              // ),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   width: 200,
              //   color: const Color.fromARGB(255, 29, 45, 73),
              //   child: Text("suzuki"),
              // ),
              
  
          bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon:Icon(Icons.home),
              onPressed: (){},
            ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon:Icon(Icons.message),
              onPressed: (){},
            ),
            label: 'Message'
          ),
        ]),
        floatingActionButton: IconButton(
          onPressed: (){},
          icon: Icon(Icons.add),
        ),
        drawer: Drawer(
          backgroundColor: Colors.deepOrange.shade300,

          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.asset('/avatar.png')
                ),
                accountName: Text('Ronak Nangia'), 
                accountEmail: Text('ronak@gmail.com')
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('About Me'),
                hoverColor: Colors.white,
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.catching_pokemon),
                title: Text('My Bikes'),
                hoverColor: Colors.white,
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('Contact me'),
                hoverColor: Colors.white,
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
                hoverColor: Colors.white,
                onTap: (){},
              ),
            ],
          ),
        ),

        //   Container(
        //     // color: Colors.deepOrange,
        //     height: 100,
        //     width: 100,
        //     // transform: Matrix4.rotationY(3),
        //     // margin: EdgeInsets.all(20), will not work currently as container is inside center
        //     // alignment: Alignment.center,
        //     // padding: EdgeInsets.all(20),
        //     alignment: Alignment.center,
        //     // constraints: BoxConstraints.expand(height: 200),
        //     // constraints: BoxConstraints(
        //     //   minHeight: 200,
        //     //   maxHeight: 400),
        //     decoration: BoxDecoration(
        //       color: Colors.tealAccent,
        //       borderRadius: BorderRadius.all(Radius.circular(25)),
        //       border: Border.all(
        //         color: Colors.black,
        //         width: 2
        //       )
        //       ), // only work if we romove the color from the outer container 
        //     child: Text("Mai body hu"),
        //  )
      );
  }
}

class royalEnfield extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
        backgroundColor: Colors.amber,
        titleSpacing: 50,
        foregroundColor: Colors.cyan,
        shadowColor: Colors.red,
        elevation: 5,
        shape: Border.all(color: Colors.yellow),
        toolbarHeight: 50,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.abc),
            tooltip: "menu",
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            tooltip: "Comment kardo",
          ),
        ],
      ),
      body: ListView(children:[Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("Royal Enfield"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/classic_350.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/meteor.jpg')),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Royal Enfield Classic 350",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Royal Enfield Meteor 350",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹1,90,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹2,00,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "The Royal Enfield Classic 350 blends vintage charm with modern performance. Powered by a 349cc engine, it offers smooth handling, ideal for city rides or highway cruising, while its timeless design attracts retro enthusiasts.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "The Meteor 350 is a cruiser with a 349cc engine. It features advanced tech, including a digital display and navigation system. Perfect for long-distance cruising, it promises comfort and cutting-edge features for modern riders.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
      )],
      )
    );
  }
}


class bajaj extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],
       ),

       body: ListView(children:[Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("Bajaj"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/dominar_400.jpeg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/pulsar_150.jpg')),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Bajaj Dominar 400",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Bajaj Pulsar 150",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹2,00,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹1,03,731",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "A touring-friendly 373.3cc bike delivering 39.4 bhp. Designed for long-distance rides with LED lighting and a comfy ride posture.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "A versatile 149.9cc bike with 13.8 bhp. Known for modern styling and practicality, perfect for urban commuting.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),])
    );
  }
}


class honda extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],
       ),

       body: ListView(children:[Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("Honda"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/CBR_650R.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/CB_Shine.jpg')),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Honda CBR 650R",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Honda CB Shine",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹9,35,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹82,091",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "A sportbike with a 648.72cc inline-four engine, 85.82 bhp, and aggressive styling. Great for both commuting and spirited rides.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "A commuter bike with a 124.73cc engine offering 10.5 bhp. Known for reliability and fuel efficiency, ideal for daily city rides.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),])
    );
  }
}


class yamaha extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],
       ),

       body: ListView(children:[Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("Yamaha"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/yamaha_FZ25.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/yamaha_r15.jpg')),
            ],
          ),
           Row(
            children: [
              Expanded(
                child: Text(
                  "Yamaha FZ25",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Yamaha R15",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          
          /*
          apache_rtr
          CBR 650R
          CB Shine
          Dominar 400
          duke_390
          Gixxer SF
          pulsar_150
          RC 390
          Ronin 225
          Splendor Plus
          V-Strom 650
          Xtreme 160R
          yamaha_FZ25
          yamaha_r15
           */
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹1,52,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹1,85,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "A 249cc naked streetbike delivering 20.8 bhp. Offers a strong road presence, solid build quality, and urban-friendly ergonomics.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "A fully faired 155cc sportbike with 18.6 bhp. Features aggressive styling, superior handling, and advanced technology like variable valve actuation.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),])
    );
  }
}

class tvs extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],
       ),

       body: ListView(children:[Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("TVS"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/apache_rtr.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/Ronin_225.jpg')),
            ],
          ),
           Row(
            children: [
              Expanded(
                child: Text(
                  "TVS Apache RTR 160 4V",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "TVS Ronin 225",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹1,26,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹1,49,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "A sporty 159.7cc bike with 17.39 bhp. Features LED DRLs, gear shift indicator, and TVS SmartXonnect in the special edition.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "A stylish 225.9cc bike producing 20.4 bhp. Combines classic aesthetics with modern features like adjustable suspension.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),])
    );
  }
}


class suzuki extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],
       ),

       body: 
       ListView(children:[Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("Suzuki"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/Gixxer_SF.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/v_strom_650.webp')),
            ],
          ),
           Row(
            children: [
              Expanded(
                child: Text(
                  "Suzuki Gixxer SF",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Suzuki V-Strom 650",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹1,78,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹8,84,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "A fully faired 155cc bike with 13.6 bhp. Offers aerodynamic styling, comfort, and reliability for city and occasional touring.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "An adventure tourer with a 645cc V-twin engine producing 70 bhp. Great for long-distance rides with advanced traction control.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),]
      )
    );
  }
}

class ktm extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],
       ),

       body: ListView(children:[Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("KTM"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/duke_390.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/RC_390.jpg')),
            ],
          ),
           Row(
            children: [
              Expanded(
                child: Text(
                  "KTM Duke 390",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "KTM RC 390",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹2,90,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹3,00,000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "A naked streetfighter with a 373.2cc engine producing 43 bhp. Features aggressive styling, advanced electronics, and agile handling.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "A fully faired sportbike with a 373.2cc engine delivering 43 bhp. Track-focused design, high-performance components, and tech-rich features.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),])
    );
  }
}


class hero extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          shape: Border.all(color: Colors.yellow),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],
       ),

       body: ListView(children:[Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Text("Hero"),
          ),
          Row(
            children: [
              Expanded(child: Image.asset('/Xtreme_160R.jpg')),
              const SizedBox(width: 10),
              Expanded(child: Image.asset('/Splendor_Plus.jpg')),
            ],
          ),
           Row(
            children: [
              Expanded(
                child: Text(
                  "Hero Xtreme 160R",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Hero Splendor Plus",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Price: ₹1,14,270",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Price: ₹77,176",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "A sporty 163cc bike with 15 bhp. Features a fully digital console, LED lighting, and a lightweight design for agile performance.",
                  textAlign: TextAlign.justify,
                
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "A budget-friendly commuter with a 97.2cc engine producing 7.91 bhp. Famous for fuel efficiency and dependable performance.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    backgroundColor: const Color.fromARGB(255, 153, 178, 221),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),])
    );
  }
}
