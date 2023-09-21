//let's start by our home screen
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'breaking_news_card.dart';
import 'news_list_tile.dart';
import 'news_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Let's now work on the body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Text(
                "Breaking News",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //let's build our caroussel
              CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      BreakingNewsCard(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                  )),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Recent News",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              //now let's create the cards for the recent news
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}