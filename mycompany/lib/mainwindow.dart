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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        controller: _scrollController,
        children: [
          SizedBox(
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
          ),
          SizedBox(
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
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text("About", style: TextStyle(fontSize: 24.0)),
                      Container(
                        height: 10,
                        width: 70,
                        color: Colors.blue[900],
                      )
                    ],
                  ),
                ),
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
          ),
          SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Text("Meet Our Expert Team", style: TextStyle(fontSize: 24.0)),
                        Container(
                          height: 10,
                          width: 240,
                          color: Colors.blue[900],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                      children: [
                        Container(
                          height: 280,
                          width: 200,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/salim.jpg"),
                                    radius: 70,
                                  ),
                                ),
                                Text("Salim", style: TextStyle(fontSize: 24.0)),
                                Text("Full stack dev", style: TextStyle(fontSize: 18.0)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    child: Text("Portfolio"),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 280,
                          width: 200,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/amine.jpg"),
                                    radius: 70,
                                  ),
                                ),
                                Text("Salim", style: TextStyle(fontSize: 24.0)),
                                Text("Full stack dev", style: TextStyle(fontSize: 18.0)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    child: Text("Portfolio"),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 280,
                          width: 200,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/akram.jpg"),
                                    radius: 70,
                                  ),
                                ),
                                Text("Salim", style: TextStyle(fontSize: 24.0)),
                                Text("Full stack dev", style: TextStyle(fontSize: 18.0)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    child: Text("Portfolio"),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        // ].reversed.toList(),
        ],
      ),
    );
  }
}
