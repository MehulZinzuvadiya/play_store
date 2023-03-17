import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../tab1/provider/foryou_provider.dart';

class TopChartScreen extends StatefulWidget {
  const TopChartScreen({Key? key}) : super(key: key);

  @override
  State<TopChartScreen> createState() => _TopChartScreenState();
}

class _TopChartScreenState extends State<TopChartScreen> {
  ForYouProvider? _forYouProviderT;
  ForYouProvider? _forYouProviderF;

  @override
  Widget build(BuildContext context) {
    _forYouProviderF = Provider.of<ForYouProvider>(context, listen: false);
    _forYouProviderT = Provider.of<ForYouProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: 600,
        width: double.infinity,
        child: ListView.builder(
            itemBuilder: (context, index) => mySpace2(
                _forYouProviderF!.gameImage[index],
                _forYouProviderF!.gameName[index],
                index + 1),
            itemCount: _forYouProviderF!.gameImage.length),
      ),
    ));
  }
  Widget mySpace2(String image, String name, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${index}.",
                style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("${image}", fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${name}",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Community",
                      style: GoogleFonts.poppins(
                          color: Colors.black38, fontSize: 10)),
                  SizedBox(
                    height: 2,
                  ),
                  Row(children: [
                    Text(
                      " 5.0",
                      style: GoogleFonts.poppins(
                          fontSize: 10, color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black54,
                      size: 10,
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
