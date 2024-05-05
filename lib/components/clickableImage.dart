import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ClickableImage extends StatelessWidget {
  final double width;
  final String imagem;
  final redirect;

  const ClickableImage({
    required this.width,
    required this.imagem,
    this.redirect,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          launchUrl(redirect);
        },
        child: (Column(children: [
          Image.asset(
            imagem,
            width: width,
          )
        ])));
  }
}
