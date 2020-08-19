import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:photo_view/photo_view.dart';
class LearnGr extends StatefulWidget {
  @override
  _LearnGrState createState() => _LearnGrState();
}

class _LearnGrState extends State<LearnGr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/back1.jpg',
                fit: BoxFit.cover,
              ),
              title: Text("Golden Ratio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
            ),
          )
        ];
      },
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(18.0, 20.0, 0.0, 0.0)),
              SizedBox(
                height: 15.0,
              ),
              TypewriterAnimatedTextKit(
                text: ["What's", "Golden Ratio ?"],
                textStyle: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                'Introduction',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'In mathematics, two quantities are in the golden ratio if their ratio is the same as the ratio of their sum to the larger of the two quantities. The figure on the right illustrates the geometric relationship. Expressed algebraically, for quantities a and b with a > b > 0.',
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w100),
              ),
              SizedBox(height: 10.0),
              Text(
                'Phi or Φ (1.618 …) is the Golden Ratio that results when a line is divided in one very special and unique way. To illustrate, suppose you were asked to take a string and cut it.  There’s any number of places that you could cut it, and each place would result in different ratios for the length of the small piece to the large piece, and of the large piece to the entire string. There is one unique point, however, at which the ratio of the large piece to the smaller piece is exactly the same as the ratio of the whole string to the larger piece, and at this point this Golden Ratio of both is 1.618 to 1, or Phi.',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('images/phi.png'),
              SizedBox(
                height: 15.0,
              ),
              TypewriterAnimatedTextKit(
                text: ["more about Golden Ratio"],
                textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              SizedBox(height: 15.0),
              Text('The Fibonacci sequence, also a plot element in “The Da Vinci Code,” provides yet another way to derive Phi mathematically.\n The series is quite simple.\n Start with 0 and add 1 to get 1. Then repeat the process of adding each two numbers in the series to determine the next one: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, and so on. \nThis pattern is also found in the diagonals of Pascal’s Triangle. The relationship to the Golden Ratio or Phi is found by dividing each number by the one before it. The further you go in the series, the closer the result gets to Phi. For example:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w100
              ),
              ),
              SizedBox(height: 15.0),
              Center(child: Image.asset('images/info.png')),
              SizedBox(height: 15.0),
              TypewriterAnimatedTextKit(
                text: ["Where do we find it ?"],
                textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              SizedBox(height: 15.0),
              Text(' 1. Geometry of the Golden Ratio',style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w200
              ),),
              SizedBox(height: 15.0),
              Text(' 2. Nature and Life',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200
              ),),
              SizedBox(height: 15.0),
              Text(' 3. Perceptions of Beauty',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200
              ),),
              SizedBox(height: 15.0),
              Text(' 4. Art, Architecture and Design',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200
              ),),
              SizedBox(height: 15.0),
              Text(' 5.The Solar System and Universe',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200
              ),),
              SizedBox(height: 15.0,),
              TypewriterAnimatedTextKit(
                text: ["Discoveries involving the Golden Ratio"],
                textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              SizedBox(height: 15.0,),
              Text('The Golden Ratio continues to open new doors in our understanding of life and the universe. It appeared in Roger Penrose’s discovery in the 1970’s of “Penrose Tiles,” which allowed surfaces to be tiled in five-fold symmetry, a task previously thought impossible. It appeared again in the 1980’s in the three-dimensional molecular arrangement of quasi-crystals, a newly discovered form of matter. As we enter the 21st century, Phi seems to be having a rebirth in integrating knowledge across a wide variety of fields of study, including time and quantum physics.',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w100
              ),),
              SizedBox(height: 20.0,),
              TypewriterAnimatedTextKit(
                text: ["Also Found in "],
                textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),

              Column(
                children: [
                  SizedBox(width: 7.0,),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    height: 200,
                    width: 160,
                    color: Colors.white,
                    child: PhotoView(imageProvider: AssetImage('images/rose.jpg'),),

                  ),
                  SizedBox(height: 25.0,),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    height: 200,
                    width: 160,
                    child: PhotoView(imageProvider: AssetImage('images/tajmahal.jpg',

                    ),
                    ),



                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Column(
                children: [
                  SizedBox(width: 7.0,),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    height: 200,
                    width: 160,
                    child: PhotoView(imageProvider: AssetImage('images/all.jpg'),),

                  ),
                  Container(
                    height: 200,
                    width: 160,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    padding: EdgeInsets.all(15.0),
                    child: PhotoView(imageProvider: AssetImage('images/buikding.jpg',

                    ),),
                    
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hey the images are zoomable ,\n give it a try !',
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic
                ),
                ),
              )



            ],
          ),
        ),
      ),
    ));
  }
}
