// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sigma/root_page.dart';
import 'package:sigma/text_styles.dart';
import 'articles.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (var i = 0; i < allArticles.length; i++)
            getArticlesHead(i, context),
          tailSection,
        ],
      ),
    );
  }
}

GestureDetector getArticlesHead(int i, BuildContext context) {
  List article = allArticles[i];
  return GestureDetector(
    onTap: () {
      getArticle(i, article, context);
    },
    child: Hero(
      tag: article[0],
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                article[3],
              ),
              fit: BoxFit.fitWidth,
            ),
            color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              article[0],
              style: bigHeader,
              textAlign: TextAlign.center,
            ),
            Text(
              article[1],
              style: smallHeader,
              textAlign: TextAlign.center,
            ),
            Text(
              article[2],
              style: smallHeader,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ),
  );
}

getArticle(int i, List article, BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ReadArticle(
        i: i,
        article: article,
      ),
    ),
  );
}

class ReadArticle extends StatelessWidget {
  final int i;
  final List article;

  const ReadArticle({
    Key? key,
    required this.i,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              article[0],
              style: TextStyle(
                color: Colors.white,
                fontSize: sWidth / 25,
                fontFamily: "Alsina",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "by " + article[1],
              style: TextStyle(
                color: Colors.white,
                fontSize: sWidth / 45,
                fontFamily: "Alsina",
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Hero(
                tag: article[0],
                child: Image.asset(
                  article[3],
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              child: Text(
                article[4],
                style: GoogleFonts.abel(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
