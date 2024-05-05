import 'package:app_marcaqui/components/base_scaffold.dart';
import 'package:app_marcaqui/components/square_button.dart';
import 'package:app_marcaqui/consts/spacing_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: SpacingConst.baseSpacing * 3),
                  child: Image.asset(
                    "assets/images/logo2.png",
                    width: 300,
                  ),
                )
              ]),
          const Padding(
            padding: EdgeInsets.only(bottom: SpacingConst.baseSpacing),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: SpacingConst.baseSpacing),
                    child: ButtonSquare(
                      redirect: '/markscreen',
                      name: 'Horários disponíveis',
                      width: 150,
                      height: 150,
                      imagem: '/assets/images/botao1.png',
                    ),
                  ),
                  ButtonSquare(
                    redirect: '/artsscreen',
                    name: 'Artes disponíveis',
                    width: 150,
                    height: 150,
                    imagem: '/assets/images/botao2.png',
                  ),
                ]),
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: SpacingConst.baseSpacing),
                  child: ButtonSquare(
                    redirect: '/',
                    name: 'Chat',
                    width: 150,
                    height: 150,
                    imagem: '/assets/images/botao3.png',
                  ),
                ),
                ButtonSquare(
                  redirect: '/socialmediascreen',
                  name: 'Redes sociais',
                  width: 150,
                  height: 150,
                  imagem: '/assets/images/botao4.png',
                ),
              ]),
        ],
      ),
    ));
  }
}
