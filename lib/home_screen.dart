import 'package:donation_app/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: const GradientBoxBorder(
                          gradient: borderColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.menu,
                          color: iconColor,
                          size: 25,
                        ),
                      )),
                  const Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: const GradientBoxBorder(
                            gradient: borderColor,
                            width: 2,
                          )),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.notifications,
                          color: iconColor,
                          size: 25,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.070,
                    child: TextField(
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        // ),

                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                          color: iconColor,
                          size: 30,
                        ),
                        border: GradientOutlineInputBorder(
                            gradient: borderColor,
                            width: 2,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.09,
                      height: MediaQuery.of(context).size.height * 0.065,
                      decoration: BoxDecoration(
                          color: container,
                          borderRadius: BorderRadius.circular(6)
                          // border: Border.aconst ll(color: Colors.black)
                          ),
                      child: Icon(
                        Icons.filter_list_outlined,
                        size: 35,
                        color: filterIcon,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Causes",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  )),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 8, top: 8, bottom: 8, left: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                child: Image.network(
                                  "https://img.freepik.com/premium-photo/northern-landscape-aurora-borealis-snow-covered-mountains-milky-way-stars-sky-generative-ai_741672-1022.jpg?w=2000",
                                  width: 40,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 3, right: 5),
                              child: Text(
                                "Education",
                                style: TextStyle(
                                  fontFamily: "Exo 2",
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  const Text(
                    "Emergency Help",
                    style: TextStyle(
                      fontFamily: "Bebas Neue",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple[900]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(

                scrollDirection: Axis.horizontal,

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
                    return InkWell(onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutScreen(
                            text: "Education Kit For Poor children",
                            image:
                                "https://media.licdn.com/dms/image/D5612AQFXSeZX8NMUQA/article-cover_image-shrink_600_2000/0/1676913868810?e=2147483647&v=beta&t=dvhEPbgY_D1OshpuvjJkm8kTyCJaQ2OB3M7NSmrcv_c",
                            targetText: 'Target : \$5000',
                          ),
                        ),
                      );},
                      child:
                      Container(
                        width: 230,
                        child: Card(

                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Adjust the value to set the desired border radius
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                child: Image.network(
                                  "https://media.licdn.com/dms/image/D5612AQFXSeZX8NMUQA/article-cover_image-shrink_600_2000/0/1676913868810?e=2147483647&v=beta&t=dvhEPbgY_D1OshpuvjJkm8kTyCJaQ2OB3M7NSmrcv_c",
                                  height: 200,
                                  width: 230,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: const Text(
                                  "Education Kit For Poor children",
                                  style: TextStyle(

                                      fontSize: 16,
                                      fontFamily: "Libre Baskerville",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Target : \$5000",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.purple[900])),
                              ),
                            ],
                          ),
                        ),
                      ) );

                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
