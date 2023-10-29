// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import 'dart:convert';

import 'package:toktik/domain/entities/user_post.dart';

YesNoModel yesNoModelFromJson(String str) => YesNoModel.fromJson(json.decode(str));

String yesNoModelToJson(YesNoModel data) => json.encode(data.toJson());

class YesNoModel {
    final int resultado;
    final User user;
    final String token;

    YesNoModel({
        required this.resultado,
        required this.user,
        required this.token,
    });

    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        resultado: json["resultado"],
        user: User.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "resultado": resultado,
        "user": user.toJson(),
        "token": token,
    };
}