import 'package:flutter/material.dart';
class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    Key? key,
    this.imageLeft = true,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonLabel,
    required this.onActionPressed
  }) : super(key: key);
  final String image;
  final String title;
  final String description;
  final String buttonLabel;
  final Function() onActionPressed;
  final bool imageLeft;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1340,
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          imageLeft == true ? Expanded(
              child: Image.asset(
                  image,
                  height: 450,
              ),
          ) : Expanded(
            child: Column(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 20.0),
                Text(description),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  child: Text(buttonLabel),
                  onPressed: onActionPressed,
                )
              ],
            ),
          ),
          const SizedBox(width: 20.0),
          imageLeft == true ?Expanded(
            child: Column(
              children: [
                Text(
                    title,
                    style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 20.0),
                Text(description),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  child: Text(buttonLabel),
                  onPressed: onActionPressed,
                )
              ],
            ),
          ) : Expanded(
            child: Image.asset(
              image,
              height: 450,
            ),
          ),
        ],
      ),
    );
  }
}