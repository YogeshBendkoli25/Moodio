import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodio/src/core/routes/names.dart';
import 'package:moodio/src/core/utils/utils.dart';
import 'package:moodio/src/features/home/data/models/mood_model.dart';
import 'package:moodio/src/features/home/presentation/widgets/mood_card_widget.dart';

class MoodPage extends StatelessWidget {
  const MoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(20, 22, 22, 1), 
                Color.fromRGBO(40, 41, 41, 1),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight),
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: " What's your \n mood today?".getTextTitle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    googleFont: GoogleFonts.roboto),
              ),
              Wrap(
                spacing: 20,
                children: [
                  ...moodModelList.map((mood) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(
                            RoutesName.moodPlayerPage,
                            arguments: mood);
                      },
                      splashColor: Color.fromRGBO(255, 255, 255, 0.30),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MoodCardWidget(
                          title: mood.title,
                          emoji: mood.emoji,
                          color: mood.textColor,
                        ),
                      ),
                    );
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
