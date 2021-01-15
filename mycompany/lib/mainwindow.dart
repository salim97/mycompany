import 'package:flutter/material.dart';

class MainWindow extends StatefulWidget {
  MainWindow({Key key}) : super(key: key);

  @override
  _MainWindowState createState() => _MainWindowState();
}

class _MainWindowState extends State<MainWindow> {
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(milliseconds: 500), () {
    //   _scrollController.animateTo(
    //     _scrollController.position.maxScrollExtent,
    //     duration: Duration(milliseconds: 500),
    //     curve: Curves.fastOutSlowIn,
    //   );
    // });
  }

  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        controller: _scrollController,
        children: [
          home(),
          about(),
          team(),
          //  ].reversed.toList(),
        ],
      ),
    );
  }

  home() {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/home_background.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Text(
              "LOGO + NAME",
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          Positioned(
            top: 25,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                FlatButton(
                  child: Text("Home", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _scrollController.animateTo(
                      height * 0,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                ),
                FlatButton(
                  child: Text("About ", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _scrollController.animateTo(
                      height * 1,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                ),
                FlatButton(
                  child: Text("Work", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _scrollController.animateTo(
                      height * 2,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                ),
                FlatButton(
                  child: Text("Team", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    print("team");
                    _scrollController.animateTo(
                      height * 3,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                ),
                FlatButton(
                  child: Text("Contact", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _scrollController.animateTo(
                      height * 4,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            width: width / 2,
            child: Image.asset(
              "assets/images/home_img1.png",
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            width: width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Exclusive Mobile and web apps Today !",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                SizedBox(height: 24.0),
                SizedBox(
                  width: 410,
                  child: Text(
                    "Apps designed by our experts can work perfectly on any devices with high responsiveness and performance.",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
                SizedBox(height: 24.0),
                RaisedButton(
                  color: Colors.white,
                  child: Text(
                    "See our work",
                    // style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  onPressed: () {
                    _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  about() {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/about_background.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(top: 0, left: 0, right: 0, child: _sectionTitle(title: "About")),
          Positioned(
            bottom: height * 0.3,
            right: width * 0.02,
            width: width / 4,
            height: height / 4,
            child: Image.asset(
              "assets/images/about_img1.png",
            ),
          ),
          Positioned(
            bottom: height * 0.6,
            right: width * 0.1,
            child: Text(
              "We Complete Every Project With Extra Care As Customer Need",
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
          Positioned(
            bottom: height * 0.45,
            right: width * 0.235,
            width: 400,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel.",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }

  team() {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: _sectionTitle(title: "Meet Our Expert Team"),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                  _techGuy(name: "Salim Benabadji", role: "Full stack dev", imageAvatar: "assets/images/salim.jpg"),
                  _techGuy(name: "Amine Houari", role: "Full stack dev", imageAvatar: "assets/images/amine.jpg"),
                  _techGuy(name: "Akram Ghomari", role: "Designer", imageAvatar: "assets/images/akram.jpg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _sectionTitle({String title, double fontSize = 24.0}) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: fontSize)),
        Container(
          height: 10,
          width: 240,
          color: Colors.blue[900],
        )
      ],
    );
  }

  _techGuy({String name, String imageAvatar, String role, String portfolioLink}) {
    return Container(
      height: 280,
      width: 200,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(imageAvatar),
                radius: 70,
              ),
            ),
            Text(name, style: TextStyle(fontSize: 24.0)),
            Text(role, style: TextStyle(fontSize: 18.0)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.blue[900],
                child: Text("Portfolio", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  print(portfolioLink);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
