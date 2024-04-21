import 'package:flutter/material.dart';
import 'package:plant_store/features/account/presentation/view/widgets/account_body_w.dart';
import 'package:plant_store/features/account/presentation/view/widgets/custom_bottom_sheet.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomSheet: CustomAccountBottomSheet(),
      body: AccountViewBody(),
    );
  }
}
