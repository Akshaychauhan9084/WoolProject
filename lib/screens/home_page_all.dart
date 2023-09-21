import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../news/breaking_news_card.dart';
import '../news/news_model.dart';

class HomePageAll extends StatefulWidget {
  @override
  State<HomePageAll> createState() => _HomePageAllState();
}

class _HomePageAllState extends State<HomePageAll> {
  int activeindex = 0;
  @override 
    final urlImages = [
'assets/images/woolprocesssing.jpg',
'assets/images/warehouse.jpg',
'assets/images/marketplace.jpg',
    ];
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Color.fromARGB(255, 74, 84, 193), 
      backgroundColor: Colors.white,
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     colors: [Color(0xFF7377FD),Color(0xFF66C2F1),],
        //   ),
        // ),
         child: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(height: 20), // Add spacing between app name and network image
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CarouselSlider.builder(options: CarouselOptions(height: 200
                    ,autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayInterval: Duration(seconds: 2,),enlargeCenterPage: true,onPageChanged: (index, reason){
                      setState(() {
                        activeindex = index;
                      });
                    },),itemCount: urlImages.length,itemBuilder: ((context, index, realIndex){
                      final urlImage = urlImages[index];
                      return Container(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset(urlImage,fit: BoxFit.fill,),));
                    }),
                    
                    ),
                    const SizedBox(height: 32,),
                    buildIndicator(),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Services', // Add the app name
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              SizedBox(height: 20), // Add spacing between app name and buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircleAvatar(
                    'Wool Processing',
         
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7aeAIm-QENnA-IbVwLESVV412uGoMsmr68currsUI22Xq5kvVH_J-AZpdVxLuldJkO5s&usqp=CAU',                ),
                  SizedBox(width: 16), // Add spacing between avatars
                  _buildCircleAvatar(
                    'Warehouse',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT47htm5UFWoj_jx1WuJ5E_vnrCYxHMfi1gpTQaWbhiJsgmEzpjvgpgvhDu_dW_fgSkEMM&usqp=CAU', // Image asset path
                  ),
                  SizedBox(width: 16), // Add spacing between avatars
                  _buildCircleAvatar(
                    'Marketplace',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1IAGtjc9wJPgBQkUpOPzNdAAmmFewowbmg&usqp=CAU', // Image asset path
                  ),
                ],
              ),
             SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Breaking News",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
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
           
         
         
            ],
                 ),
         ),
      ),
    );
  }

  Widget _buildCircleAvatar(String label, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(imagePath),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
  
  buildIndicator() {
    return AnimatedSmoothIndicator(activeIndex: activeindex, count: 3,effect: SlideEffect(activeDotColor: Color.fromARGB(255, 31, 97, 152),dotColor: Colors.black12,),);

  }
}