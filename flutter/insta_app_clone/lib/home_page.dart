import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/gtr.png",
    "images/rr.png",
    "images/lambo11.png",
    "images/maclaren.png",
    "images/supra.png",
    "images/ford.png",
    "images/bmw.png",
  ];
  List<String> posts = [
    "images/gtrpost.png",
    "images/1000091181_x16_fast.jpg",
    "images/lamboopst.jpg",
    "images/mcl.png",
    "images/supraEX.png",
    "images/fordGT.png",
    "images/bmwVb.png",
  ];
  List<String> nameStory = [
    "GTR",
    "Roll Royce",
    "Lamborghini",
    "Mclaren",
    "Supraa",
    "ford",
    "BMW",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/5a4e432a2da5ad73df7efe7a.png",
          height: 50,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //STORY

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  7,
                  (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("images/insta_bg.png"),
                            child: CircleAvatar(
                                radius: 22,
                                backgroundImage:
                                    AssetImage(profileImages[index])),
                          ),
                          SizedBox(height: 10),
                          Text(
                            nameStory[index],
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          )
                        ],
                      )),
                ),
              )),
          Divider(height: 2),

          Column(
              children: List.generate(
                  7,
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //HEADER POST
                          Row(children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: CircleAvatar(
                                  radius: 19,
                                  backgroundImage:
                                      AssetImage("images/insta_bg.png"),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        AssetImage(profileImages[index]),
                                  )),
                            ),
                            // Text("Profile Name"),
                            Text(nameStory[index]),
                            Spacer(),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert)),
                          ]),
                          //IMAGE POST
                          Image.asset(posts[index]),
                          //FOOTER POST

                          Row(children: [
                            IconButton(
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.comment_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.send_outlined),
                              onPressed: () {},
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.bookmark_border_outlined),
                              onPressed: () {},
                            )
                          ]),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(text: "Liked by "),
                                        TextSpan(
                                            text: "You",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(text: " and"),
                                        TextSpan(
                                            text: " others",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ]),
                                ),
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: nameStory[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text:
                                                "  This is the best of our and is One Of A Kind, and the best sounding and flaming car"),
                                      ]
                                  ),
                                ),
                                Text(
                                  "View all 1250 comments",
                                  style: TextStyle(
                                    color: Colors.black45,
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      )))
        ],
      )),
    );
  }
}
