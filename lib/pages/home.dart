import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff303342),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff535463),

                    ),

                    height: 50,
                    width: 300,
                    child: Row(
                      children: [
                        Image.network("https://cdn-icons-png.flaticon.com/512/3031/3031293.png"),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'Search',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),

                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Cancel',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 15
                    ),),
                  )
                ],
              ),
            ),

            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 20,left: 15,right: 15),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child:  Image.network(
                                'https://www.pngfind.com/pngs/m/29-298579_captain-marvel-icon-captain-marvel-star-logo-hd.png',
                                height: 50.0,
                                fit: BoxFit.cover,
                                width: 50.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Container(
                                  child: Text('Captain Amerika',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Colors.white
                                  ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2.5,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(

                                      child: Text('2017 | Marvel',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          )


                        ],
                      ),
                    );
                  },
                ),
              )

            )
          ],
        ),
      ),
    );
  }
}
