import 'package:flutter/material.dart';


class CardModel {
  
  List<CardResults> results;

  CardModel({this.results});
   
  CardModel.fromJson(Map<String, dynamic> json) {
 
    var x = json['cardResults'] != null;
        if (x) {
      results = new List<CardResults>();
      json['cardResults'].forEach((v) {
        results.add(new CardResults.formJson(v));
      });
    }
  }
}


class CardResults {
  String cardHolderName;
  String cardNumber;
  String cardMonth;
  String cardYear;
  String cardCvv;
  Color cardColor;
  String cardType;

  CardResults(
    {
      this.cardHolderName,
      this.cardNumber,
      this.cardMonth,
      this.cardYear,
      this.cardCvv,
      this.cardColor,
      this.cardType
    }
  );

  CardResults.formJson(Map<String, dynamic> json) {
    cardHolderName = json['cardHolderName'];
    cardNumber = json['cardNumber'];
    cardMonth = json['cardMonth'];
    cardYear = json['cardYear'];
    cardCvv = json['cardCvv']; // Card verification Number
    cardColor = json['cardColor'];
    cardType = json['cardType'];
  }
  
}