import 'dart:typed_data';

class TextWithImage {
  final String text;
  final String imageUrl; // or you can use Uint8List imageBytes if you prefer

  TextWithImage({
    required this.text,
    required this.imageUrl,
  });
}

// Sample data
List<TextWithImage> textWithImages = [
  TextWithImage(
    text: "USA",
    imageUrl: "images/usa.jpg",
  ),
  TextWithImage(
    text: "France",
    imageUrl: "images/france.png",
  ),
  TextWithImage(
    text: "India",
   imageUrl: "images/india.png",
  ),
  TextWithImage(
    text: "Germany",
    imageUrl: "images/germany.png",
  ),
  TextWithImage(
    text: "Finland",
   imageUrl: "images/finland.png",
  ),
  TextWithImage(
    text: "Hungary",
   imageUrl: "images/hungary.png",
  ),
  TextWithImage(
    text: "Cameron",
    imageUrl: "images/cameron.png",
  ),
];
