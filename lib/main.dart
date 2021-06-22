// Rz Rasel Tutorial (Rashed - Uz - Zaman)
// Import flutter material package
import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: PortfolioPage(),
));

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
                  "https://avatars.githubusercontent.com/u/6184050?v=4"
                ),
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
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {},
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
            "Like\n\t\t\t10.5M",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Comment\n\t\t\t1.9M",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Share\n\t\t\t15.2M",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
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
            child: Text("Post"),
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
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text("Message"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(255, 0, 102, 1),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
//97