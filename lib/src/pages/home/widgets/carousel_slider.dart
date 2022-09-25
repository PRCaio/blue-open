import 'package:flutter/material.dart';

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 15),
      children: [
        Container(
          width: 200,
          color: Colors.purple[600],
          child: const Center(
            child: Text(
              'Item 1',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 200,
          color: Colors.purple[500],
          child: const Center(
              child: Text(
            'Item 2',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
      ],
    );
  }
}

  // Widget _buildCarousel(BuildContext context, int carouselIndex) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: <Widget>[
  //       Text('Carousel $carouselIndex'),
  //       SizedBox(
  //         width: 250,
  //         height: 100.0,
  //         child: PageView.builder(
  //           controller: PageController(viewportFraction: 0.5),
  //           itemBuilder: (BuildContext context, int itemIndex) {
  //             return _buildCarouselItem(context, carouselIndex, itemIndex);
  //           },
  //         ),
  //       )
  //     ],
  //   );
  // }

//   Widget _buildCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Container(
//         decoration: const BoxDecoration(
//           color: Colors.grey,
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//         ),
//       ),
//     );
//   }
// }
