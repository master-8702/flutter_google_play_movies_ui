import 'package:flutter/material.dart';
import 'package:flutter_google_play_movies_ui/components/comment_widget.dart';
import 'package:flutter_google_play_movies_ui/components/rating_bar_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color myColor = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 250,
                        child: Image.asset(
                          "assets/images/hobbs and shaw2.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: -90,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 180,
                          width: 130,
                          child: Image.asset(
                            "assets/images/hobbs and shaw.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                        const Expanded(
                          flex: 3,
                          child: Text(
                            "Fast & Furious Presents: \nHobbs and Shaw",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Expanded(
                          // flex: 1,
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 90.0),
                    child: Text(
                      "March 2019 | PG-13 | 136 minutes",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink),
                          ),
                          child: const Text(
                            "Rent \$3.99",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Buy \$13.99",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                primary: Colors.pink),
                            child: const Text(
                              "4.1 ★",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "245 ratings",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                primary: Colors.pink),
                            child: const Icon(
                              Icons.people,
                              size: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "family",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                primary: Colors.pink),
                            child: Image.asset(
                              "assets/images/tomato.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "71%",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                primary: Colors.pink),
                            child: const Icon(
                              Icons.tab,
                              size: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "similar",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const Text(
                    "Dwayne Johnson and Jason Statham return to their unforgettable roles as Hobbs and Shaw i"
                    "n this action-packed feature from the blockbuster Fast & Furious franchise! For "
                    "years, hulking lawman Luke Hobbs (Johnson) and lawless outcast Deckard Shaw (Statham) "
                    "have traded smack talk and body blows. But when cyber-genetically enhanced anarchist "
                    "Brixton (Idris Elba) gains control of an insidious bio-threat that could alter humanity "
                    "forever, Hobbs and Shaw must partner up to bring down the only guy who might be badder "
                    "than themselves!",
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Action & Adventure",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Ratings and Review",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text("Ratings and reviews aren’t verified"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.info)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "4.1",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "★ ★ ★ ★",
                            style: TextStyle(
                                color: myColor, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("1.72K reviews ",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 13))
                        ],
                      ),
                      Column(
                        children: [
                          RatingBarIndicator(
                            width: 170,
                            color: myColor,
                            leadingNumber: 5,
                          ),
                          RatingBarIndicator(
                            width: 50,
                            color: myColor,
                            leadingNumber: 4,
                          ),
                          RatingBarIndicator(
                            width: 40,
                            color: myColor,
                            leadingNumber: 3,
                          ),
                          RatingBarIndicator(
                            width: 20,
                            color: myColor,
                            leadingNumber: 2,
                          ),
                          RatingBarIndicator(
                            width: 60,
                            color: myColor,
                            leadingNumber: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CommentWidget(),
                  CommentWidget(),
                  CommentWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "See all reviews",
                    style: TextStyle(
                        color: myColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Rate this movie",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  Text(
                    "Tell us what you think.",
                    style: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "★ ★ ★ ★ ★",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500,
                        fontSize: 60),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Write review",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        primary: myColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
