import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_colors.dart';
import 'package:islamic_app/view/screens/quran/models/hadith_model.dart';
import 'package:islamic_app/widgets/custom_back_ground.dart';
import 'package:islamic_app/widgets/custom_container.dart';

class HadithContentScreen extends StatefulWidget {
  static const String routeName = "hadith content";
  const HadithContentScreen({super.key});

  @override
  State<HadithContentScreen> createState() => _HadithContentScreenState();
}

class _HadithContentScreenState extends State<HadithContentScreen> {
  late HadithModel args;
  bool _isInit = true;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInit) {}
    args = ModalRoute.of(context)?.settings.arguments as HadithModel;
    _isInit = false;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return CustomBackGround(
      body: Column(
        children: [
          CustomContainer(
            child: Column(
              children: [
                Text(args.title, style: theme.textTheme.titleLarge),
                SizedBox(height: 5),
                Divider(color: AppColors.primary, thickness: 2, height: 2),
                SizedBox(height: 5),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      args.content,

                      textDirection: TextDirection.rtl,
                      style: theme.textTheme.bodyMedium!.copyWith(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
