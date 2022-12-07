import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sigma/text_styles.dart';
import 'package:sigma/root_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const PageCentreText(),
          const Divider(
            height: 20,
            thickness: 20,
            color: Colors.transparent,
          ),
          aboutSection,
          const Divider(
            height: 20,
            thickness: 20,
            color: Colors.transparent,
          ),
          tailSection
        ],
      ),
    );
  }
}

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 50,
        ),
        // Text(
        //   " Sigma SIT ",
        //   style: bigHeader,
        // ),
      ],
    );
  }
}

class PageCentreText extends StatelessWidget {
  const PageCentreText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGMA",
              style: bigHeaderSize,
              textAlign: TextAlign.center,
            ),
            Text(
              "Official Newsletter of CSE Department",
              style: smallHeaderSize,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

Widget aboutSection = Column(
  children: [
    const SizedBox(
      height: 50,
    ),
    Text(
      "About Sigma",
      style: bigHeaderDark,
      textAlign: TextAlign.center,
    ),
    const SizedBox(
      height: 20,
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Text(
        "Sigma is the newsletter of Computer Science and Engineering Department. It was started in the year of 2001. Team sigma was created to provide the students with updates and information about the latest trends and technology in the domain of computer science.Sigma currently consists of 24 members. The basic idea to form this group was to incorporate any upcoming or latest technology at one place and make the students aware of all information and technology which is worth knowing for any student of a computer science background. Sigma team also conducts fun and interactive events for students for all years and all branches. It conducts a technical article writing contest for the students each year ,from which three write ups will be selected and published in the edition and will be awarded with cash prizes.",
        style: GoogleFonts.abel(fontSize: 20),
      ),
    ),
    const SizedBox(
      height: 50,
    ),
    // Container(
    //   width: double.infinity,
    //   padding: const EdgeInsets.only(left: 400, right: 50),
    //   child: Column(
    //     children: [
    //       Text(
    //         "Every edition includes different sections designed to provide specific information. They are:\n\n  • Cover Story: The cover story is an article on the latest technical topic which in trending during the launch of the issue",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //       Text(
    //         " • Crossword: This is a crossword which is made considering technical terms relating to computer science.",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //       Text(
    //         " • Sci - Fi: The most interesting section of the newsletter is Sci-Fi. It is a trending technical topic in the form a science fiction story. In this the writer tries telling a story which includes some technical concept relating to the world.",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //       Text(
    //         " • Hunting in c/c++: This section consists of four small tricky program snippets in c / c++. The readers try finding the output of these programs.",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //       Text(
    //         " • Tips and Tweaks: This section gives the readers an insight into some small and interesting technical tips which they can try it themselves.",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //       Text(
    //         " • Do it yourself: This section gives a small demo on making of small tech related stuffs. The readers can follow the steps and make the product quite easily with available things.",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //       Text(
    //         " • Open source section: This is a new section added in the year 2016. This section includes open source alternatives to commonly used paid applications.",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //       Text(
    //         " • Technical articles: There are two technical articles in every issue.",
    //         style: GoogleFonts.abel(fontSize: 14),
    //       ),
    //     ],
    //   ),
    // )
  ],
);
