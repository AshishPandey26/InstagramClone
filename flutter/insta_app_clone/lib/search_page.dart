// import "dart:html";

import "package:flutter/material.dart";

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> button = [
      "Reels",
      "travel",
      "lifestyle",
      "crypto",
      "food",
      "art",
      "DIY",
      "Music",
    ];
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              contentPadding: EdgeInsets.all(0),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Color.fromRGBO(220, 220, 220, 1),
              filled: true,
            ),
          ),
          actions: [IconButton(icon: Icon(Icons.person_add),
          onPressed:() {})]
        ),
        SliverAppBar(
            title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              7,
              (index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: OutlinedButton(onPressed: (){}, child: Text(button[index])),
              ),
            ),
          ),
        ))
      ]),
    );
  }
}
