import 'package:financial_dashboard/utils/app_images.dart';

class DrawerModel {
  final String title;
  final String icon;

  const DrawerModel({
    required this.title,
    required this.icon,
  });

  static const List<DrawerModel> drawerItems = [
    DrawerModel(
      title: 'Overview',
      icon: AppImages.overview,
    ),
    DrawerModel(
      title: 'Transactions',
      icon: AppImages.transactions,
    ),
    DrawerModel(
      title: 'Cards',
      icon: AppImages.cards,
    ),
    DrawerModel(
      title: 'Invoices',
      icon: AppImages.invoices,
    ),
    DrawerModel(
      title: 'Goals',
      icon: AppImages.goals,
    ),
    DrawerModel(
      title: 'Settings',
      icon: AppImages.settings,
    ),
  ];
}
