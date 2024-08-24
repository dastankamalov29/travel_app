import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails({super.key, required this.location});
  final LocationDetail location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.25,
                  color: Colors.white,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(location.image), fit: BoxFit.fill),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                        70,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 320,
                        left: 150,
                        child: Column(
                          children: [
                            Text(
                              location.name,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                Text(
                                  location.address,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        right: 15,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: GestureDetector(
                            child: const Icon(
                              Icons.bookmark,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                    location.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      70,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ratingAndMore(),
                      const SizedBox(height: 80),
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        location.description,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color(0XFFD38CAB),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Text(
                            "\$${location.price}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 65,
                            width: 170,
                            decoration: BoxDecoration(
                              color: const Color(0XFFD38CAB),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 39, top: 18),
                              child: Text(
                                "Book now",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 500,
              left: 30,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/cd.jpeg"),
              ),
            ),
            const Positioned(
              top: 500,
              left: 55,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/images.jpeg"),
              ),
            ),
            const Positioned(
              top: 500,
              left: 80,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/cd.jpeg"),
              ),
            ),
            const Positioned(
              top: 500,
              left: 110,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0XFFD38CAB),
                child: Text(
                  "28+",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Positioned(
              top: 500,
              left: 30,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/cd.jpeg"),
              ),
            ),
            const Positioned(
              left: 165,
              top: 505,
              child: Text(
                "Recommended",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding ratingAndMore() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.amber[900],
            size: 30,
          ),
          const SizedBox(width: 5),
          Text(
            location.rating.toString(),
            style: const TextStyle(
              fontSize: 20,
              color: Color(0XFFB07C98),
            ),
          ),
          const SizedBox(width: 30),
          const Icon(
            Icons.cloud,
            color: Colors.blue,
          ),
          Text(
            "${location.temperature}°C",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 30),
          const Icon(
            Icons.watch_later_rounded,
            color: Color(0XFFB07C98),
          ),
          const SizedBox(width: 7),
          Text(
            "${location.time} Day",
            style: const TextStyle(
              fontSize: 20,
              color: Color(0XFFB07C98),
            ),
          )
        ],
      ),
    );
  }
}
