import 'package:financial_dashboard/utils/app_images.dart';

class TransactionModel {
  final String icon;
  final String reciever;
  final String type;
  final String date;
  final String amount;

  const TransactionModel({
    required this.icon,
    required this.reciever,
    required this.type,
    required this.date,
    required this.amount,
  });

  static const List<String> titles = [
    'Reciever',
    'Type',
    'Date',
    'Amount',
  ];

  static const List<TransactionModel> clientsList = [
    TransactionModel(
      icon: AppImages.tescoMarket,
      reciever: 'Tesco Market',
      type: 'Shopping',
      date: '13 Dec 2020',
      amount: '\$75.67',
    ),
    TransactionModel(
      icon: AppImages.electromenMarket,
      reciever: 'ElectroMen Market',
      type: 'Shopping',
      date: '14 Dec 2020',
      amount: '\$250',
    ),
    TransactionModel(
      icon: AppImages.restaurant,
      reciever: 'Fiorgio Restaurant',
      type: 'Food',
      date: '07 Dec 2020',
      amount: '\$19.5',
    ),
    TransactionModel(
      icon: AppImages.user,
      reciever: 'John Mathew Kayne',
      type: 'Sport',
      date: '06 Dec 2020',
      amount: '\$350',
    ),
    TransactionModel(
      icon: AppImages.user,
      reciever: 'Ann Marlin',
      type: 'Shopping',
      date: '30 Dec 2020',
      amount: '\$430',
    ),
  ];
}
