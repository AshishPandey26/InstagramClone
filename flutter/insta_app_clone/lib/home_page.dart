import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/gtr.png",
    "images/lambo11.png",
    "images/maclaren.png",
    "images/supra.png",
    "images/rr.png",
    "images/ford.png",
    "images/bmw.png",
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
                            "Profile Name",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          )
                        ],
                      )
                  ),
                ),
              )
          ),
          Divider(height: 2),

          Column(
              children: List.generate(
                  7,
                  (index) => Column(
                        children: [
                          //HEADER POST
                          Row(children: [
                            Container(
                            padding: EdgeInsets.all(10),
                            child : CircleAvatar(
                              radius: 19,
                                backgroundImage: AssetImage("images/insta_bg.png"),
                                child:CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(profileImages[index]),)
                                ),

                            ),
                            Text("Profile Name"),
                            Spacer(),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                         ]
                        )
                      ],
                  )
              )
          )
        ],
        )
      ),
    );
  }
}
