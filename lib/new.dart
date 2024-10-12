import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; 

class Akking extends StatefulWidget {
  const Akking({super.key});

  @override
  State<Akking> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Akking> {
  var height, width;
  int activeIndex = 0; 
  final CarouselController _controller = CarouselController(); 

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Color.fromARGB(255, 237, 225, 225),
          child: Column(
            children: [
              SizedBox(height: height * 0.04),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Icon(Icons.favorite),
                  ],
                ),
              ),
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    height: height * 0.3,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bot.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    height: height * 0.3,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/payalbir (2).png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    height: height * 0.3,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/mtka (2).png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/lob.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/brb.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: height * 0.3,
                  aspectRatio: 16 / 8,
                  viewportFraction: 0.97,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.32,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index; 
                    });
                  },
                  scrollDirection: Axis.horizontal,
                ),
                carouselController: _controller,
              ),
              SizedBox(height: height * 0.02), 
              
              AnimatedSmoothIndicator(
                activeIndex: activeIndex, 
                count: 4, 
                effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                ),
                onDotClicked: (index) {
                  _controller.animateToPage(index); 
                },
              ),
              SizedBox(height: height*0.03,),
                Container(
                height: height * 0.22,
                width: width * 0.97,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                 
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("images/mtbir.png"),
                      
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "Mataka biryani",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Raccipy Garlic Roasted ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Biryani",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            Text(
                              "150 Kcol",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.25,
                            ),
                            Icon(Icons.favorite_outline_sharp)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
                            SizedBox(height: height*0.03,),
                Container(
                height: height * 0.22,
                width: width * 0.97,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                 
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage("images/mtbir.png"),
                      
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "Mataka biryani",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Raccipy Garlic Roasted ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Biryani",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            Text(
                              "150 Kcol",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.25,
                            ),
                            Icon(Icons.favorite_outline_sharp)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
