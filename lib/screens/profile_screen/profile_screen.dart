import 'package:flutter/material.dart';

import '../../components/text_with_stick.dart';
import '../../utils/assets.dart';
import '../../utils/theme.dart';

enum Settings {
  language,
  helpSupport,
  termsPolicies,
  callOperator,
  tikTok,
  instagram,
  logout;

  String get asValue {
    switch (this) {
      case Settings.language:
        return 'Dil';
      case Settings.helpSupport:
        return 'Komek & goldaw';
      case Settings.termsPolicies:
        return 'Gizlinlik we syyasat';
      case Settings.callOperator:
        return 'Operatora jan';
      case Settings.tikTok:
        return 'USSAT';
      case Settings.instagram:
        return 'USSAT';
      case Settings.logout:
        return 'Cykmak';
    }
  }

  Widget get asIcon {
    switch (this) {
      case Settings.language:
        return AppIcons.language.svgPicture();
      case Settings.helpSupport:
        return AppIcons.help.svgPicture();
      case Settings.termsPolicies:
        return AppIcons.policies.svgPicture();
      case Settings.callOperator:
        return AppIcons.help.svgPicture();
      case Settings.tikTok:
        return AppIcons.tikTok.svgPicture();
      case Settings.instagram:
        return AppIcons.instagram.svgPicture();
      case Settings.logout:
        return AppIcons.logout.svgPicture();
    }
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final appTextTheme = context.appTextTheme;
    return Scaffold(
      appBar: AppBar(
        title: TextWithStick(
          Text('Bildiris', style: textTheme.labelLarge),
        ),
      ),
      body: Column(
        children: Settings.values
            .map(
              (e) => ListTile(
                title: Text(
                  e.asValue,
                  style: appTextTheme.settingsTitle,
                ),
                leading: e.asIcon,
              ),
            )
            .toList(growable: false),
      ),
    );
  }
}
