import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PortfolioPage(),
  ));
}

class PortfolioPage extends StatefulWidget {
  @override
  PortfolioPageState createState() => PortfolioPageState();
}

class PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 1, 1, 1),
      body: Column(
        children: [
          Container(
            height: size.height / 1.9,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://blog.codemagic.io/uploads/covers/CM_Android-dev-Flutter.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 15,
                ),
                Container(
                  width: size.width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height / 3,
                ),
                Text(
                  "Rz Rasel - Flutter Tutorial",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          info(size),
          buttons(size),
          tiles("Location: Add Location"),
          tiles("Gender: Add Gender"),
          tiles("Profession: Add Profession"),
        ],
      ),
    );
  }

  Widget tiles(String title) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      trailing: Icon(Icons.edit, color: Colors.white,),
    );
  }

  Widget buttons(Size size) {
    return Container(
      height: size.height / 10,
      width: size.width / 1.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Follow",
              style: TextStyle(fontSize: 14),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(29, 29, 29, 1),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 42),
              side: BorderSide(
                width: 2,
                color: Color.fromRGBO(255, 0, 102, 1),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Message",
              style: TextStyle(fontSize: 14),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(255, 0, 102, 1),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 36),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget info(Size size) {
    return Container(
      height: size.height / 10,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Followers\n\t\t\t5.5M",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Following\n\t\t\t5",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Posts\n\t\t\t582",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
//https://youtu.be/hpKD1pLGDJk?t=98

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: const Text(
              "Hello world",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/
