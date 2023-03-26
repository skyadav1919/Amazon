import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Slider_Page extends StatefulWidget {
  const Slider_Page({Key? key}) : super(key: key);

  @override
  State<Slider_Page> createState() => _Slider_PageState();
}

class _Slider_PageState extends State<Slider_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: [

            //1st Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),


          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 500),
            viewportFraction: 0.8,
          ),
        ),
      ),

    );
  }
}
