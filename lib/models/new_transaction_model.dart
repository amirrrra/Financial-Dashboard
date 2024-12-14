import 'package:financial_dashboard/utils/app_images.dart';

class NewTransactionModel {
  final String image;
  final String name;

  const NewTransactionModel({
    required this.image,
    required this.name,
  });

  static const List<NewTransactionModel> usersList = [
    NewTransactionModel(
      image: AppImages.user1,
      name: 'Ahmed',
    ),
    NewTransactionModel(
      image: AppImages.user2,
      name: 'Amer',
    ),
    NewTransactionModel(
      image: AppImages.user3,
      name: 'Mustafa',
    ),
    NewTransactionModel(
      image: AppImages.user4,
      name: 'Ali',
    ),
    NewTransactionModel(
      image: AppImages.user5,
      name: 'Abdelrahman',
    ),
    NewTransactionModel(
      image: AppImages.user6,
      name: 'Maged',
    ),
    NewTransactionModel(
      image: AppImages.user7,
      name: 'Omran',
    ),
    NewTransactionModel(
      image: AppImages.user8,
      name: 'Muhammed',
    ),
  ];
}
