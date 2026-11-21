import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/constants/app_colors.dart';
import 'package:islamic_app/core/constants/app_paths.dart';
import 'package:islamic_app/view/screens/hadith/hadith_content_screen.dart';
import 'package:islamic_app/view/screens/quran/models/hadith_model.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<HadithModel> ahadithList = [];
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppPaths.hadithLogoLight,
            fit: BoxFit.cover,
            height: 210,
            width: 140,
          ),
          Divider(thickness: 2, height: 2, color: AppColors.primary),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text("الأحاديث", style: theme.textTheme.titleLarge),
          ),
          Divider(thickness: 2, height: 2, color: AppColors.primary),
          if (ahadithList.isEmpty)
            Expanded(
              child: Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: ahadithList.length,
              itemBuilder: (context, index) {
                final hadith = ahadithList[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),

                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        HadithContentScreen.routeName,
                        arguments: hadith,
                      );
                    },
                    child: Text(
                      hadith.title,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _loadData() async {
    //1- load data from file data return as a string
    String fileContent = await rootBundle.loadString(AppPaths.ahadithPath);
    // split the ahadith and store it into the list
    List<String> ahadithList = fileContent.split("#");

    for (int i = 0; i <= ahadithList.length - 1; i++) {
      String singleHadith = ahadithList[i].trim();
      //يعد حرف حرق لحد ما يدوس انتر ويرجع ويرجع الرقم بتاعه
      int titleIndex = singleHadith.indexOf("\n");
      //
      if (titleIndex == -1) continue;
      String hadithTitle = singleHadith.substring(0, titleIndex).trim();
      String hadithContent = singleHadith.substring(titleIndex + 1).trim();
      HadithModel hadithModel = HadithModel(
        title: hadithTitle,
        content: hadithContent,
      );
      this.ahadithList.add(hadithModel);
    }
    setState(() {});
  }
}
