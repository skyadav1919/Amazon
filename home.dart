import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    Image.asset('assests/images/img_5.png', fit: BoxFit.fill,),
    Image.asset('assests/images/img_1.png', fit: BoxFit.fill,),
    Image.asset('assests/images/img_2.png', fit: BoxFit.fill,),
    Image.asset('assests/images/img_3.png', fit: BoxFit.fill,),


  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff94dfda),
          statusBarIconBrightness: Brightness.dark,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: <Color>[Color(0xff84d8e3), Color(0xffa6e6ce)]),
          ),
        ),
        title: Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: ('Search Amazon.in'),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: Icon(
                Icons.control_camera_outlined,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mic_none_rounded,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color(0xffc7efe4),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text('Delivery to Lko'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            Container(
              height: 115,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Offer')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_1.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Fashion')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_2.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Fruits')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_3.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('T.V.')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_4.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Mini TV')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_5.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Makeup')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_6.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Movie')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_7.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Medicine')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_8.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Toys')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assests/images/img_9.png',
                          height: 80,
                          width: 80,
                        ),
                        Text('Furniture')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 170,
              margin: EdgeInsets.all(10),
              // color: Colors.red,
              child: PageView(
                children: _list,
                scrollDirection: Axis.horizontal,
                // pageSnapping: false,
                physics: BouncingScrollPhysics(),
                controller: controller,
                onPageChanged: (num) {
                  setState(() {
                    _curr = num;
                  }
                  );
                },
              ),
            ),
            CarouselSlider(
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
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
