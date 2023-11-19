import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:m5_marimba/application/data/marimba_data.dart';
import 'package:m5_marimba/application/models/marimba_key_model.dart';
import 'package:m5_marimba/ui/components/marimba_key/marimba_key_component.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<void> _playNote(MarimbaKeyModel element) async {
    final AudioPlayer audio = AudioPlayer();
    audio.seek(const Duration(milliseconds: 250));
    await audio.play(UrlSource(element.audioUrl));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double elementHeight = (size.height / MarimbaData.elements.length) - 15;

    return ListView.builder(
      itemCount: MarimbaData.elements.length,
      itemBuilder: (BuildContext c, int index) {
        MarimbaKeyModel element = MarimbaData.elements[index];
        return MarimbaKeyComponent(
          color: element.color,
          height: elementHeight,
          onTap: () => _playNote(element),
        );
      },
    );
  }
}
