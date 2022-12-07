// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:sigma/root_page.dart';
import 'package:url_launcher/url_launcher.dart';

class EditionsPage extends StatelessWidget {
  const EditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    //double sHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Sigma Winter Editions",
            style: TextStyle(
              color: Colors.black,
              fontSize: sWidth / 10,
              fontFamily: "Alsina",
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Divider(
            height: 10,
            color: Colors.black,
          ),
          for (var i = 0; i < years.length; i++) getEditions(i, sWidth),
          const Divider(
            height: 10,
            color: Colors.black,
          ),
          tailSection,
        ],
      ),
    );
  }
}

List years = ["2020", "2020 Jan", "2019", "2018", "2017", "2016"];

List editionLinks = [
  Uri.parse(
    'http://sit.ac.in/html/component/csedept/csesigmapaper/Sigma-Browse-Edition-2020.pdf',
  ),
  Uri.parse(
    "http://sit.ac.in/html/component/csedept/csesigmapaper/sigma_winter_edition_jan2020.pdf",
  ),
  Uri.parse(
    'http://sit.ac.in/html/component/csedept/csesigmapaper/sigma_winter_edition_jan2019.pdf',
  ),
  Uri.parse(
    'http://sit.ac.in/html/component/csedept/csesigmapaper/sigma_Winter_edition-2018.pdf',
  ),
  Uri.parse(
    'http://sit.ac.in/html/component/csedept/csesigmapaper/winterEdition(final).pdf',
  ),
  Uri.parse(
    'http://sit.ac.in/html/component/csedept/csesigmapaper/winterEdition(final).pdf',
  ),
];

List cheifEditors = [
  "Eeshan Guha",
  "Keshav Mishra",
  "Divyanshu Anand",
  "Aayush Sinha",
  "Niraj Agarwal",
  "Keerthana"
];

Padding getEditions(int i, double wid) {
  const double padValue = 8.0;

  return Padding(
    padding: const EdgeInsets.all(padValue),
    child: Column(
      children: [
        InkWell(
          hoverColor: Colors.deepOrange,
          onTap: () {
            launchUrl(
              editionLinks[i],
              mode: LaunchMode.externalApplication,
            );
          },
          child: Row(
            children: [
              Image.asset(
                "assets/images/" + years[i] + ".png",
                width: wid / 2,
              ),
              SizedBox(
                width: (wid / 2) - (2 * padValue),
                child: Column(
                  children: [
                    Text(
                      "Winter Edition " + years[i],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: wid / 25,
                        fontFamily: "Alsina",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Chief Editor: " + cheifEditors[i],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: wid / 50,
                        fontFamily: "Alsina",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
