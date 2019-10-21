import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ChargeResponseModel extends Equatable {
  final String status;
  final String message;
  final String validateInstructions;
  final String suggestedAuth;
  final String chargeResponseCode;
  final String authModelUsed;
  final String flwRef;
  final String txRef;
  final String chargeResponseMessage;
  final String authUrl;
  final String appFee;
  final String currency;
  final String chargedAmount;
  final String redirectUrl;
  final bool hasData;

  ChargeResponseModel({
    @required this.status,
    @required this.message,
    @required this.validateInstructions,
    @required this.suggestedAuth,
    @required this.chargeResponseCode,
    @required this.authModelUsed,
    @required this.flwRef,
    @required this.txRef,
    @required this.chargeResponseMessage,
    @required this.authUrl,
    @required this.appFee,
    @required this.currency,
    @required this.chargedAmount,
    @required this.redirectUrl,
    @required this.hasData,
  });

  factory ChargeResponseModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> data = json["data"];
    return ChargeResponseModel(
        status: json["status"],
        message: json["message"],
        hasData: data != null,
        suggestedAuth: data["suggested_auth"],
        chargeResponseCode: data["chargeResponseCode"],
        authModelUsed: data["authModelUsed"],
        flwRef: data["flwRef"],
        validateInstructions: data.containsKey("validateInstructions")
            ? data["validateInstructions"]["instruction"]
            : null,
        txRef: data["txRef"],
        chargeResponseMessage: data["chargeResponseMessage"],
        authUrl: data["authurl"],
        appFee: data["appFee"],
        currency: data["currency"],
        chargedAmount: data["charged_amount"].toString(),
        redirectUrl: data["redirectUrl"]);
  }

  Map<String, dynamic> toJson() => {};
  @override
  List<Object> get props => [
        status,
        message,
        validateInstructions,
        suggestedAuth,
        chargeResponseCode,
        authModelUsed,
        flwRef,
        chargeResponseMessage,
        authUrl,
        appFee,
        currency,
        chargedAmount,
        redirectUrl,
        hasData,
      ];
}
