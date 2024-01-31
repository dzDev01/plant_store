import 'package:flutter/material.dart';
import 'package:plant_store/constants/app_colors.dart';
import 'package:plant_store/presentation/widgets/app_button_widget.dart';
import 'package:plant_store/presentation/widgets/app_input_field_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: AppInputFieldWidget(
            hint: "Search",
            controller: controller,
            leading: Icon(Icons.search),
            action: Icon(Icons.mic),
          ),
        ),
      ),
    );
  }
}
