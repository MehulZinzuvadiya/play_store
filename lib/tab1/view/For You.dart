import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/tab1/provider/foryou_provider.dart';
import 'package:provider/provider.dart';

class Foryou extends StatefulWidget {
  const Foryou({Key? key}) : super(key: key);

  @override
  State<Foryou> createState() => _ForyouState();
}

class _ForyouState extends State<Foryou> {
  ForYouProvider? _forYouProviderT;
  ForYouProvider? _forYouProviderF;

  @override
  Widget build(BuildContext context) {
    _forYouProviderF = Provider.of<ForYouProvider>(context, listen: false);
    _forYouProviderT = Provider.of<ForYouProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Recommended for you",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black54,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                  itemBuilder: (context, index) => soulSpace(
                      _forYouProviderF!.gameImage1[index],
                      _forYouProviderF!.gameName1[index]),
                  itemCount: _forYouProviderF!.gameImage1.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Social apps",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black54,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                  itemBuilder: (context, index) => soulSpace(
                      _forYouProviderF!.gameImage2[index],
                      _forYouProviderF!.gameName2[index]),
                  itemCount: _forYouProviderF!.gameImage2.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Suggested for you",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black54,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                  itemBuilder: (context, index) => soulSpace(
                      _forYouProviderF!.gameImage3[index],
                      _forYouProviderF!.gameName3[index]),
                  itemCount: _forYouProviderF!.gameImage3.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true),
            ),
          ],
        ),
      ),
    ));
  }

  Widget soulSpace(String image, String game) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("${image}", fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "${game}",
                style: GoogleFonts.lato(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(children: [
                Text(
                  "5.0",
                  style: GoogleFonts.lato(fontSize: 8, color: Colors.black),
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
            ),
          ],
        ),
      ),
    );
  }
}
