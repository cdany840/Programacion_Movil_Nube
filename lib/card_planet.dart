import 'package:flutter/material.dart';

class CardCourseData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  const CardCourseData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.background,
  });
}

class CardCourse extends StatelessWidget {
  const CardCourse({super.key, required this.data});

  final CardCourseData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              Flexible(
                flex: 20,
                child: Image(image: data.image)
              ),
              const Spacer(flex: 3),
              Text(
                data.title.toUpperCase(),
                style: TextStyle(
                  color: data.titleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
              const Spacer(flex: 1),
              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontSize: 16
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Spacer(flex: 10)
            ],
          ),
        ),
      ],
    );
  }
}