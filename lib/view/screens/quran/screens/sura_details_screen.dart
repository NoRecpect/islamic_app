import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/constants/app_colors.dart';
import 'package:islamic_app/core/constants/app_paths.dart';
import 'package:islamic_app/view/screens/quran/models/sura_model.dart';
import 'package:islamic_app/view/screens/quran/widgets/verse.dart';
import 'package:islamic_app/widgets/custom_back_ground.dart';
import 'package:islamic_app/widgets/custom_container.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = "sura details";

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> _versesList = [];
  bool _isInit = true;
  late SuraModel args;

  Future<void> _loadData(int suraId) async {
    String suraContent = await rootBundle.loadString(AppPaths.suraPath(suraId));
    _versesList = suraContent.trim().split("\n");
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInit) {
      args = ModalRoute.of(context)!.settings.arguments as SuraModel;
      _loadData(args.id);
      _isInit = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return CustomBackGround(
      body: CustomContainer(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("سورة ${args.name}", style: theme.textTheme.titleLarge),
                SizedBox(width: 20),
                ImageIcon(AssetImage(AppPaths.quranLightPlayIcon), size: 25),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(color: AppColors.primary, thickness: 2, height: 2),
            const SizedBox(height: 5),
            if (_versesList.isEmpty)
              Expanded(
                child: Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
              )
            else
              Expanded(
                child: ListView.builder(
                  itemCount: _versesList.length,
                  itemBuilder: (context, index) => Verse(
                    verse: "${_versesList[index].trim()} (${index + 1})",
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
