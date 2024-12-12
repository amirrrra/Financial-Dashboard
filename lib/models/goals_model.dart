import 'package:financial_dashboard/utils/app_images.dart';

class GoalsModel {
  final String amount;
  final String date;
  final String image;
  final String title;

  const GoalsModel({
    required this.amount,
    required this.date,
    required this.image,
    required this.title,
  });

  static const List<GoalsModel> goalsList = [
    GoalsModel(
      amount: '550',
      date: '12/20/20',
      image: AppImages.holidays,
      title: 'Holidays',
    ),
    GoalsModel(
      amount: '200',
      date: '12/20/20',
      image: AppImages.renovation,
      title: 'Renovation',
    ),
    GoalsModel(
      amount: '820',
      date: '12/20/20',
      image: AppImages.xbox,
      title: 'Xbox',
    ),
  ];
}
