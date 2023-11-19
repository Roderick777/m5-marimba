import 'package:m5_marimba/application/data/color_data.dart';
import 'package:m5_marimba/application/data/constant_data.dart';
import 'package:m5_marimba/application/models/marimba_key_model.dart';

String mainUrl = ConstantData.publicFileUrl;

class MarimbaData {
  static List<MarimbaKeyModel> elements = [
    MarimbaKeyModel(
      color: ColorData.colors[0],
      audioUrl: '$mainUrl/audio/marimba/nota1.wav',
      index: 0,
    ),
    MarimbaKeyModel(
      color: ColorData.colors[1],
      audioUrl: '$mainUrl/audio/marimba/nota2.wav',
      index: 1,
    ),
    MarimbaKeyModel(
      color: ColorData.colors[2],
      audioUrl: '$mainUrl/audio/marimba/nota3.wav',
      index: 2,
    ),
    MarimbaKeyModel(
      color: ColorData.colors[3],
      audioUrl: '$mainUrl/audio/marimba/nota4.wav',
      index: 3,
    ),
    MarimbaKeyModel(
      color: ColorData.colors[4],
      audioUrl: '$mainUrl/audio/marimba/nota5.wav',
      index: 4,
    ),
    MarimbaKeyModel(
      color: ColorData.colors[5],
      audioUrl: '$mainUrl/audio/marimba/nota6.wav',
      index: 5,
    ),
    MarimbaKeyModel(
      color: ColorData.colors[6],
      audioUrl: '$mainUrl/audio/marimba/nota7.wav',
      index: 6,
    ),
  ];
}
