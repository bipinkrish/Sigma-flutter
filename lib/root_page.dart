import 'package:flutter/material.dart';
import 'package:sigma/articles_page.dart';
import 'editions_page.dart';
import 'home_page.dart';
import 'text_styles.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const LogoAndName(),
        actions: [
          TextButton(
            onPressed: () {
              setState(
                () {
                  pageNumber = 1;
                },
              );
            },
            child: Text(
              "Home",
              style: pageNumber == 1 ? smallHeader : smallHeaderBold,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  pageNumber = 2;
                },
              );
            },
            child: Text(
              "Articles",
              style: pageNumber == 2 ? smallHeader : smallHeaderBold,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  pageNumber = 3;
                },
              );
            },
            child: Text(
              "Editions",
              style: pageNumber == 3 ? smallHeader : smallHeaderBold,
            ),
          ),
        ],
        elevation: 5,
        shadowColor: Colors.white,
      ),
      body: pageNumber == 1
          ? const HomePage()
          : pageNumber == 2
              ? const ArticlesPage()
              : const EditionsPage(),
    );
  }
}

ColoredBox tailSection = ColoredBox(
  color: const Color.fromARGB(255, 37, 35, 35),
  child: SizedBox(
    width: double.infinity,
    height: 150,
    child: Padding(
      padding: const EdgeInsets.only(
        top: 35,
        bottom: 15,
      ),
      child: Column(
        children: [
          Text(
            "Sigma Newsletter",
            style: bigHeaderGold,
            textAlign: TextAlign.center,
          ),
          Text(
            "All Rights Reserved. © 2020 Siddaganga Institute of Technology",
            style: smallHeader,
            textAlign: TextAlign.center,
          )
        ],
      ),
    ),
  ),
);
