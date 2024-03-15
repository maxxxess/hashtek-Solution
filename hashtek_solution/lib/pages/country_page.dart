import 'package:flutter/material.dart';
import 'package:hashtek_solution/const/textstyle.dart';
import 'package:hashtek_solution/models/country_data.dart';
import 'package:hashtek_solution/widgets/custom_container.dart';

class CountryPage extends StatefulWidget {
  final List<TextWithImage> textItems;

  const CountryPage({
    super.key,
    required this.textItems,
  });

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: IconButton(
              disabledColor: Colors.white10,
              highlightColor: Colors.white10,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
                size: 30,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Text(
            'Country Page',
            style: myStyle(Colors.white, 24, FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: ListView.builder(
          itemCount: textWithImages.length,
          itemBuilder: (context, index) {
            final item = textWithImages[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Container(
                  height: 30,
                  child: Image.asset(
                    item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  item.text,
                  style: myStyle(Colors.white, 22, FontWeight.w400),
                ),
                onTap: () {
                  Navigator.pop(context, item.text);

                  /*   TextWithImage(text: 'Text 1', imageUrl: ''),
                  TextWithImage(text: 'Text 2', imageUrl: ''),
                  TextWithImage(text: 'Text 3', imageUrl: ''),*/
                  // Handle item selection here
                  // For example, you can navigate to another page or perform an action
                  // based on the selected item.
                  print('Selected: ${item.text}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
