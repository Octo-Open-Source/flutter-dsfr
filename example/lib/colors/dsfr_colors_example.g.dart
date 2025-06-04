import 'package:example/colors/dsfr_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DsfrColorsExample {
  static List<DsfrColor> allColors() {
    return [
      DsfrColor(name: 'pinkTuile850', description: "Color(0xfffcbfb7)", color: DsfrColors.pinkTuile850),
      DsfrColor(name: 'brownOpera850', description: "Color(0xffeac7ad)", color: DsfrColors.brownOpera850),
      DsfrColor(name: 'beigeGrisGalet850', description: "Color(0xffe0cab0)", color: DsfrColors.beigeGrisGalet850),
      DsfrColor(name: 'brownCaramel850', description: "Color(0xffeac7b2)", color: DsfrColors.brownCaramel850),
      DsfrColor(name: 'brownCafeCreme850', description: "Color(0xffe7ca8e)", color: DsfrColors.brownCafeCreme850),
      DsfrColor(name: 'yellowTournesol850', description: "Color(0xffefcb3a)", color: DsfrColors.yellowTournesol850),
      DsfrColor(name: 'greenMenthe850', description: "Color(0xff73e0cf)", color: DsfrColors.greenMenthe850),
      DsfrColor(name: 'greenArchipel850', description: "Color(0xff60e0eb)", color: DsfrColors.greenArchipel850),
      DsfrColor(name: 'greenBourgeon850', description: "Color(0xff95e257)", color: DsfrColors.greenBourgeon850),
      DsfrColor(name: 'greenEmeraude850', description: "Color(0xff6fe49d)", color: DsfrColors.greenEmeraude850),
      DsfrColor(
          name: 'greenTilleulVerveine850', description: "Color(0xffe2cf58)", color: DsfrColors.greenTilleulVerveine850),
      DsfrColor(name: 'yellowMoutarde850', description: "Color(0xfffcc63a)", color: DsfrColors.yellowMoutarde850),
      DsfrColor(name: 'orangeTerreBattue850', description: "Color(0xfffcc0b0)", color: DsfrColors.orangeTerreBattue850),
      DsfrColor(name: 'blueEcume850', description: "Color(0xffbfccfb)", color: DsfrColors.blueEcume850),
      DsfrColor(name: 'blueCumulus850', description: "Color(0xffb6cffb)", color: DsfrColors.blueCumulus850),
      DsfrColor(name: 'purpleGlycine850', description: "Color(0xfffbb8f6)", color: DsfrColors.purpleGlycine850),
      DsfrColor(name: 'pinkMacaron850', description: "Color(0xfffcc0b4)", color: DsfrColors.pinkMacaron850),
      DsfrColor(
          name: 'purpleGlycine850Hover', description: "Color(0xfff983f1)", color: DsfrColors.purpleGlycine850Hover),
      DsfrColor(name: 'pinkMacaron850Hover', description: "Color(0xfffb9175)", color: DsfrColors.pinkMacaron850Hover),
      DsfrColor(name: 'pinkTuile850Hover', description: "Color(0xfffb907d)", color: DsfrColors.pinkTuile850Hover),
      DsfrColor(name: 'brownOpera850Hover', description: "Color(0xffd09f74)", color: DsfrColors.brownOpera850Hover),
      DsfrColor(
          name: 'beigeGrisGalet850Hover', description: "Color(0xffbaa48a)", color: DsfrColors.beigeGrisGalet850Hover),
      DsfrColor(name: 'brownCaramel850Hover', description: "Color(0xffd69e75)", color: DsfrColors.brownCaramel850Hover),
      DsfrColor(
          name: 'yellowTournesol850Hover', description: "Color(0xffc1a42d)", color: DsfrColors.yellowTournesol850Hover),
      DsfrColor(name: 'blueEcume850Hover', description: "Color(0xff8ba7f8)", color: DsfrColors.blueEcume850Hover),
      DsfrColor(name: 'blueCumulus850Hover', description: "Color(0xff76adf8)", color: DsfrColors.blueCumulus850Hover),
      DsfrColor(name: 'greenMenthe850Hover', description: "Color(0xff5bb5a7)", color: DsfrColors.greenMenthe850Hover),
      DsfrColor(
          name: 'greenArchipel850Hover', description: "Color(0xff4cb4bd)", color: DsfrColors.greenArchipel850Hover),
      DsfrColor(
          name: 'greenBourgeon850Hover', description: "Color(0xff77b645)", color: DsfrColors.greenBourgeon850Hover),
      DsfrColor(
          name: 'greenEmeraude850Hover', description: "Color(0xff58b77d)", color: DsfrColors.greenEmeraude850Hover),
      DsfrColor(
          name: 'greenTilleulVerveine850Hover',
          description: "Color(0xffb7a846)",
          color: DsfrColors.greenTilleulVerveine850Hover),
      DsfrColor(
          name: 'yellowMoutarde850Hover', description: "Color(0xffcb9f2d)", color: DsfrColors.yellowMoutarde850Hover),
      DsfrColor(
          name: 'orangeTerreBattue850Hover',
          description: "Color(0xfffb926b)",
          color: DsfrColors.orangeTerreBattue850Hover),
      DsfrColor(
          name: 'brownCafeCreme850Hover', description: "Color(0xffbca473)", color: DsfrColors.brownCafeCreme850Hover),
      DsfrColor(
          name: 'greenEmeraude850Active', description: "Color(0xff4b9f6c)", color: DsfrColors.greenEmeraude850Active),
      DsfrColor(name: 'pinkTuile850Active', description: "Color(0xfffa7659)", color: DsfrColors.pinkTuile850Active),
      DsfrColor(name: 'brownOpera850Active', description: "Color(0xffb68b65)", color: DsfrColors.brownOpera850Active),
      DsfrColor(
          name: 'beigeGrisGalet850Active', description: "Color(0xffa38f78)", color: DsfrColors.beigeGrisGalet850Active),
      DsfrColor(
          name: 'brownCaramel850Active', description: "Color(0xffbc8a66)", color: DsfrColors.brownCaramel850Active),
      DsfrColor(name: 'blueEcume850Active', description: "Color(0xff6b93f6)", color: DsfrColors.blueEcume850Active),
      DsfrColor(
          name: 'yellowTournesol850Active',
          description: "Color(0xffa88e26)",
          color: DsfrColors.yellowTournesol850Active),
      DsfrColor(name: 'blueCumulus850Active', description: "Color(0xff4a9df7)", color: DsfrColors.blueCumulus850Active),
      DsfrColor(name: 'greenMenthe850Active', description: "Color(0xff4f9d91)", color: DsfrColors.greenMenthe850Active),
      DsfrColor(
          name: 'greenArchipel850Active', description: "Color(0xff419ca4)", color: DsfrColors.greenArchipel850Active),
      DsfrColor(
          name: 'greenTilleulVerveine850Active',
          description: "Color(0xffa0923c)",
          color: DsfrColors.greenTilleulVerveine850Active),
      DsfrColor(
          name: 'greenBourgeon850Active', description: "Color(0xff679e3b)", color: DsfrColors.greenBourgeon850Active),
      DsfrColor(
          name: 'yellowMoutarde850Active', description: "Color(0xffb18a26)", color: DsfrColors.yellowMoutarde850Active),
      DsfrColor(
          name: 'orangeTerreBattue850Active',
          description: "Color(0xfffa7a35)",
          color: DsfrColors.orangeTerreBattue850Active),
      DsfrColor(
          name: 'brownCafeCreme850Active', description: "Color(0xffa48f64)", color: DsfrColors.brownCafeCreme850Active),
      DsfrColor(
          name: 'purpleGlycine850Active', description: "Color(0xfff767ef)", color: DsfrColors.purpleGlycine850Active),
      DsfrColor(name: 'pinkMacaron850Active', description: "Color(0xfffa794a)", color: DsfrColors.pinkMacaron850Active),
      DsfrColor(name: 'orangeTerreBattue925', description: "Color(0xfffddfd8)", color: DsfrColors.orangeTerreBattue925),
      DsfrColor(name: 'yellowMoutarde925', description: "Color(0xfffde2b5)", color: DsfrColors.yellowMoutarde925),
      DsfrColor(name: 'yellowTournesol925', description: "Color(0xfffde39c)", color: DsfrColors.yellowTournesol925),
      DsfrColor(name: 'pinkTuile925', description: "Color(0xfffddfdb)", color: DsfrColors.pinkTuile925),
      DsfrColor(name: 'blueCumulus925', description: "Color(0xffdae6fd)", color: DsfrColors.blueCumulus925),
      DsfrColor(name: 'blueEcume925', description: "Color(0xffdee5fd)", color: DsfrColors.blueEcume925),
      DsfrColor(name: 'purpleGlycine925', description: "Color(0xfffddbfa)", color: DsfrColors.purpleGlycine925),
      DsfrColor(name: 'pinkMacaron925', description: "Color(0xfffddfda)", color: DsfrColors.pinkMacaron925),
      DsfrColor(name: 'greenMenthe925', description: "Color(0xff8bf8e7)", color: DsfrColors.greenMenthe925),
      DsfrColor(name: 'greenArchipel925', description: "Color(0xffa6f2fa)", color: DsfrColors.greenArchipel925),
      DsfrColor(name: 'greenEmeraude925', description: "Color(0xff9ef9be)", color: DsfrColors.greenEmeraude925),
      DsfrColor(name: 'greenBourgeon925', description: "Color(0xffa9fb68)", color: DsfrColors.greenBourgeon925),
      DsfrColor(
          name: 'greenTilleulVerveine925', description: "Color(0xfffbe769)", color: DsfrColors.greenTilleulVerveine925),
      DsfrColor(name: 'brownCafeCreme925', description: "Color(0xfff4e3c7)", color: DsfrColors.brownCafeCreme925),
      DsfrColor(name: 'beigeGrisGalet925', description: "Color(0xffeee4d9)", color: DsfrColors.beigeGrisGalet925),
      DsfrColor(name: 'brownOpera925', description: "Color(0xfff3e2d7)", color: DsfrColors.brownOpera925),
      DsfrColor(name: 'brownCaramel925', description: "Color(0xfff3e2d9)", color: DsfrColors.brownCaramel925),
      DsfrColor(name: 'brownOpera925Hover', description: "Color(0xffe7bfa0)", color: DsfrColors.brownOpera925Hover),
      DsfrColor(name: 'brownCaramel925Hover', description: "Color(0xffe7bea6)", color: DsfrColors.brownCaramel925Hover),
      DsfrColor(
          name: 'beigeGrisGalet925Hover', description: "Color(0xffdbc3a4)", color: DsfrColors.beigeGrisGalet925Hover),
      DsfrColor(
          name: 'brownCafeCreme925Hover', description: "Color(0xffe1c386)", color: DsfrColors.brownCafeCreme925Hover),
      DsfrColor(
          name: 'orangeTerreBattue925Hover',
          description: "Color(0xfffbb8a5)",
          color: DsfrColors.orangeTerreBattue925Hover),
      DsfrColor(
          name: 'yellowMoutarde925Hover', description: "Color(0xfff6c43c)", color: DsfrColors.yellowMoutarde925Hover),
      DsfrColor(
          name: 'yellowTournesol925Hover', description: "Color(0xffe9c53b)", color: DsfrColors.yellowTournesol925Hover),
      DsfrColor(name: 'pinkTuile925Hover', description: "Color(0xfffbb8ad)", color: DsfrColors.pinkTuile925Hover),
      DsfrColor(name: 'blueCumulus925Hover', description: "Color(0xffa9c8fb)", color: DsfrColors.blueCumulus925Hover),
      DsfrColor(
          name: 'purpleGlycine925Hover', description: "Color(0xfffbaff5)", color: DsfrColors.purpleGlycine925Hover),
      DsfrColor(name: 'pinkMacaron925Hover', description: "Color(0xfffbb8ab)", color: DsfrColors.pinkMacaron925Hover),
      DsfrColor(name: 'greenMenthe925Hover', description: "Color(0xff6ed5c5)", color: DsfrColors.greenMenthe925Hover),
      DsfrColor(
          name: 'greenArchipel925Hover', description: "Color(0xff62dbe5)", color: DsfrColors.greenArchipel925Hover),
      DsfrColor(name: 'blueEcume925Hover', description: "Color(0xffb4c5fb)", color: DsfrColors.blueEcume925Hover),
      DsfrColor(
          name: 'greenEmeraude925Hover', description: "Color(0xff69df97)", color: DsfrColors.greenEmeraude925Hover),
      DsfrColor(
          name: 'greenBourgeon925Hover', description: "Color(0xff8ed654)", color: DsfrColors.greenBourgeon925Hover),
      DsfrColor(
          name: 'greenTilleulVerveine925Hover',
          description: "Color(0xffd7c655)",
          color: DsfrColors.greenTilleulVerveine925Hover),
      DsfrColor(name: 'brownOpera925Active', description: "Color(0xffdeaa7e)", color: DsfrColors.brownOpera925Active),
      DsfrColor(
          name: 'brownCaramel925Active', description: "Color(0xffe1a982)", color: DsfrColors.brownCaramel925Active),
      DsfrColor(
          name: 'brownCafeCreme925Active', description: "Color(0xffccb078)", color: DsfrColors.brownCafeCreme925Active),
      DsfrColor(
          name: 'orangeTerreBattue925Active',
          description: "Color(0xfffaa184)",
          color: DsfrColors.orangeTerreBattue925Active),
      DsfrColor(
          name: 'yellowMoutarde925Active', description: "Color(0xffdfb135)", color: DsfrColors.yellowMoutarde925Active),
      DsfrColor(
          name: 'yellowTournesol925Active',
          description: "Color(0xffd3b235)",
          color: DsfrColors.yellowTournesol925Active),
      DsfrColor(name: 'pinkTuile925Active', description: "Color(0xfffaa191)", color: DsfrColors.pinkTuile925Active),
      DsfrColor(name: 'blueCumulus925Active', description: "Color(0xff8ab8f9)", color: DsfrColors.blueCumulus925Active),
      DsfrColor(
          name: 'purpleGlycine925Active', description: "Color(0xfffa96f2)", color: DsfrColors.purpleGlycine925Active),
      DsfrColor(name: 'pinkMacaron925Active', description: "Color(0xfffaa18d)", color: DsfrColors.pinkMacaron925Active),
      DsfrColor(name: 'greenMenthe925Active', description: "Color(0xff62bfb1)", color: DsfrColors.greenMenthe925Active),
      DsfrColor(
          name: 'greenArchipel925Active', description: "Color(0xff58c5cf)", color: DsfrColors.greenArchipel925Active),
      DsfrColor(name: 'blueEcume925Active', description: "Color(0xff99b3f9)", color: DsfrColors.blueEcume925Active),
      DsfrColor(
          name: 'greenEmeraude925Active', description: "Color(0xff5ec988)", color: DsfrColors.greenEmeraude925Active),
      DsfrColor(
          name: 'greenBourgeon925Active', description: "Color(0xff7fc04b)", color: DsfrColors.greenBourgeon925Active),
      DsfrColor(
          name: 'greenTilleulVerveine925Active',
          description: "Color(0xffc2b24c)",
          color: DsfrColors.greenTilleulVerveine925Active),
      DsfrColor(
          name: 'beigeGrisGalet925Active', description: "Color(0xffc6b094)", color: DsfrColors.beigeGrisGalet925Active),
      DsfrColor(name: 'brownCaramel950', description: "Color(0xfff7ebe5)", color: DsfrColors.brownCaramel950),
      DsfrColor(name: 'orangeTerreBattue950', description: "Color(0xfffee9e5)", color: DsfrColors.orangeTerreBattue950),
      DsfrColor(name: 'purpleGlycine950', description: "Color(0xfffee7fc)", color: DsfrColors.purpleGlycine950),
      DsfrColor(name: 'blueCumulus950', description: "Color(0xffe6eefe)", color: DsfrColors.blueCumulus950),
      DsfrColor(name: 'greenArchipel950', description: "Color(0xffc7f6fc)", color: DsfrColors.greenArchipel950),
      DsfrColor(name: 'blueEcume950', description: "Color(0xffe9edfe)", color: DsfrColors.blueEcume950),
      DsfrColor(name: 'greenBourgeon950', description: "Color(0xffc9fcac)", color: DsfrColors.greenBourgeon950),
      DsfrColor(
          name: 'greenTilleulVerveine950', description: "Color(0xfffceeac)", color: DsfrColors.greenTilleulVerveine950),
      DsfrColor(name: 'greenMenthe950', description: "Color(0xffbafaee)", color: DsfrColors.greenMenthe950),
      DsfrColor(name: 'greenEmeraude950', description: "Color(0xffc3fad5)", color: DsfrColors.greenEmeraude950),
      DsfrColor(name: 'yellowMoutarde950', description: "Color(0xfffeebd0)", color: DsfrColors.yellowMoutarde950),
      DsfrColor(name: 'yellowTournesol950', description: "Color(0xfffeecc2)", color: DsfrColors.yellowTournesol950),
      DsfrColor(name: 'pinkTuile950', description: "Color(0xfffee9e7)", color: DsfrColors.pinkTuile950),
      DsfrColor(name: 'pinkMacaron950', description: "Color(0xfffee9e6)", color: DsfrColors.pinkMacaron950),
      DsfrColor(name: 'brownCafeCreme950', description: "Color(0xfff7ecdb)", color: DsfrColors.brownCafeCreme950),
      DsfrColor(name: 'beigeGrisGalet950', description: "Color(0xfff3ede5)", color: DsfrColors.beigeGrisGalet950),
      DsfrColor(name: 'brownOpera950', description: "Color(0xfff7ece4)", color: DsfrColors.brownOpera950),
      DsfrColor(
          name: 'beigeGrisGalet950Hover', description: "Color(0xffe1d0b5)", color: DsfrColors.beigeGrisGalet950Hover),
      DsfrColor(name: 'brownOpera950Hover', description: "Color(0xffeccdb3)", color: DsfrColors.brownOpera950Hover),
      DsfrColor(name: 'brownCaramel950Hover', description: "Color(0xffeccbb9)", color: DsfrColors.brownCaramel950Hover),
      DsfrColor(
          name: 'brownCafeCreme950Hover', description: "Color(0xffedce94)", color: DsfrColors.brownCafeCreme950Hover),
      DsfrColor(
          name: 'orangeTerreBattue950Hover',
          description: "Color(0xfffdc6ba)",
          color: DsfrColors.orangeTerreBattue950Hover),
      DsfrColor(
          name: 'yellowMoutarde950Hover', description: "Color(0xfffdcd6d)", color: DsfrColors.yellowMoutarde950Hover),
      DsfrColor(
          name: 'yellowTournesol950Hover', description: "Color(0xfffbd335)", color: DsfrColors.yellowTournesol950Hover),
      DsfrColor(name: 'pinkTuile950Hover', description: "Color(0xfffdc6c0)", color: DsfrColors.pinkTuile950Hover),
      DsfrColor(name: 'pinkMacaron950Hover', description: "Color(0xfffdc6bd)", color: DsfrColors.pinkMacaron950Hover),
      DsfrColor(
          name: 'purpleGlycine950Hover', description: "Color(0xfffdc0f8)", color: DsfrColors.purpleGlycine950Hover),
      DsfrColor(name: 'blueCumulus950Hover', description: "Color(0xffbcd3fc)", color: DsfrColors.blueCumulus950Hover),
      DsfrColor(
          name: 'greenArchipel950Hover', description: "Color(0xff64ecf8)", color: DsfrColors.greenArchipel950Hover),
      DsfrColor(name: 'blueEcume950Hover', description: "Color(0xffc5d0fc)", color: DsfrColors.blueEcume950Hover),
      DsfrColor(
          name: 'greenBourgeon950Hover', description: "Color(0xff9ae95d)", color: DsfrColors.greenBourgeon950Hover),
      DsfrColor(
          name: 'greenTilleulVerveine950Hover',
          description: "Color(0xffe8d45c)",
          color: DsfrColors.greenTilleulVerveine950Hover),
      DsfrColor(name: 'greenMenthe950Hover', description: "Color(0xff79e7d5)", color: DsfrColors.greenMenthe950Hover),
      DsfrColor(
          name: 'greenEmeraude950Hover', description: "Color(0xff77eda5)", color: DsfrColors.greenEmeraude950Hover),
      DsfrColor(
          name: 'beigeGrisGalet950Active', description: "Color(0xffd1bea2)", color: DsfrColors.beigeGrisGalet950Active),
      DsfrColor(name: 'brownOpera950Active', description: "Color(0xffe6ba90)", color: DsfrColors.brownOpera950Active),
      DsfrColor(
          name: 'brownCaramel950Active', description: "Color(0xffe6b79a)", color: DsfrColors.brownCaramel950Active),
      DsfrColor(
          name: 'orangeTerreBattue950Active',
          description: "Color(0xfffcb09e)",
          color: DsfrColors.orangeTerreBattue950Active),
      DsfrColor(
          name: 'yellowMoutarde950Active', description: "Color(0xfff4be30)", color: DsfrColors.yellowMoutarde950Active),
      DsfrColor(
          name: 'yellowTournesol950Active',
          description: "Color(0xffe6c130)",
          color: DsfrColors.yellowTournesol950Active),
      DsfrColor(name: 'pinkTuile950Active', description: "Color(0xfffcb0a7)", color: DsfrColors.pinkTuile950Active),
      DsfrColor(name: 'pinkMacaron950Active', description: "Color(0xfffcb0a2)", color: DsfrColors.pinkMacaron950Active),
      DsfrColor(
          name: 'purpleGlycine950Active', description: "Color(0xfffca8f6)", color: DsfrColors.purpleGlycine950Active),
      DsfrColor(name: 'blueCumulus950Active', description: "Color(0xff9fc3fc)", color: DsfrColors.blueCumulus950Active),
      DsfrColor(
          name: 'greenArchipel950Active', description: "Color(0xff5bd8e3)", color: DsfrColors.greenArchipel950Active),
      DsfrColor(name: 'blueEcume950Active', description: "Color(0xffadbffc)", color: DsfrColors.blueEcume950Active),
      DsfrColor(name: 'greenMenthe950Active', description: "Color(0xff6fd3c3)", color: DsfrColors.greenMenthe950Active),
      DsfrColor(
          name: 'greenEmeraude950Active', description: "Color(0xff6dd897)", color: DsfrColors.greenEmeraude950Active),
      DsfrColor(
          name: 'greenBourgeon950Active', description: "Color(0xff8dd555)", color: DsfrColors.greenBourgeon950Active),
      DsfrColor(
          name: 'greenTilleulVerveine950Active',
          description: "Color(0xffd4c254)",
          color: DsfrColors.greenTilleulVerveine950Active),
      DsfrColor(
          name: 'brownCafeCreme950Active', description: "Color(0xffdabd84)", color: DsfrColors.brownCafeCreme950Active),
      DsfrColor(name: 'brownOpera975', description: "Color(0xfffbf5f2)", color: DsfrColors.brownOpera975),
      DsfrColor(name: 'brownCaramel975', description: "Color(0xfffbf5f2)", color: DsfrColors.brownCaramel975),
      DsfrColor(name: 'brownCafeCreme975', description: "Color(0xfffbf6ed)", color: DsfrColors.brownCafeCreme975),
      DsfrColor(name: 'orangeTerreBattue975', description: "Color(0xfffef4f2)", color: DsfrColors.orangeTerreBattue975),
      DsfrColor(name: 'yellowMoutarde975', description: "Color(0xfffef5e8)", color: DsfrColors.yellowMoutarde975),
      DsfrColor(name: 'yellowTournesol975', description: "Color(0xfffef6e3)", color: DsfrColors.yellowTournesol975),
      DsfrColor(name: 'pinkTuile975', description: "Color(0xfffef4f3)", color: DsfrColors.pinkTuile975),
      DsfrColor(name: 'pinkMacaron975', description: "Color(0xfffef4f2)", color: DsfrColors.pinkMacaron975),
      DsfrColor(name: 'purpleGlycine975', description: "Color(0xfffef3fd)", color: DsfrColors.purpleGlycine975),
      DsfrColor(name: 'greenArchipel975', description: "Color(0xffe5fbfd)", color: DsfrColors.greenArchipel975),
      DsfrColor(name: 'blueEcume975', description: "Color(0xfff4f6fe)", color: DsfrColors.blueEcume975),
      DsfrColor(name: 'blueCumulus975', description: "Color(0xfff3f6fe)", color: DsfrColors.blueCumulus975),
      DsfrColor(name: 'greenMenthe975', description: "Color(0xffdffdf7)", color: DsfrColors.greenMenthe975),
      DsfrColor(name: 'greenEmeraude975', description: "Color(0xffe3fdeb)", color: DsfrColors.greenEmeraude975),
      DsfrColor(
          name: 'greenTilleulVerveine975', description: "Color(0xfffef7da)", color: DsfrColors.greenTilleulVerveine975),
      DsfrColor(name: 'greenBourgeon975', description: "Color(0xffe6feda)", color: DsfrColors.greenBourgeon975),
      DsfrColor(name: 'beigeGrisGalet975', description: "Color(0xfff9f6f2)", color: DsfrColors.beigeGrisGalet975),
      DsfrColor(
          name: 'greenTilleulVerveine975Active',
          description: "Color(0xffebd54c)",
          color: DsfrColors.greenTilleulVerveine975Active),
      DsfrColor(
          name: 'beigeGrisGalet975Active', description: "Color(0xffe1ceb1)", color: DsfrColors.beigeGrisGalet975Active),
      DsfrColor(
          name: 'greenBourgeon975Active', description: "Color(0xff98ed4d)", color: DsfrColors.greenBourgeon975Active),
      DsfrColor(
          name: 'greenEmeraude975Active', description: "Color(0xff6df1a3)", color: DsfrColors.greenEmeraude975Active),
      DsfrColor(name: 'greenMenthe975Active', description: "Color(0xff70ebd8)", color: DsfrColors.greenMenthe975Active),
      DsfrColor(name: 'blueCumulus975Active', description: "Color(0xffbed0fa)", color: DsfrColors.blueCumulus975Active),
      DsfrColor(name: 'blueEcume975Active', description: "Color(0xffc3cffa)", color: DsfrColors.blueEcume975Active),
      DsfrColor(
          name: 'greenArchipel975Active', description: "Color(0xff73e9f0)", color: DsfrColors.greenArchipel975Active),
      DsfrColor(
          name: 'purpleGlycine975Active', description: "Color(0xfffabff5)", color: DsfrColors.purpleGlycine975Active),
      DsfrColor(name: 'pinkMacaron975Active', description: "Color(0xfffac5b8)", color: DsfrColors.pinkMacaron975Active),
      DsfrColor(name: 'pinkTuile975Active', description: "Color(0xfffac4be)", color: DsfrColors.pinkTuile975Active),
      DsfrColor(
          name: 'yellowTournesol975Active',
          description: "Color(0xfff5d24b)",
          color: DsfrColors.yellowTournesol975Active),
      DsfrColor(
          name: 'yellowMoutarde975Active', description: "Color(0xfffbcd64)", color: DsfrColors.yellowMoutarde975Active),
      DsfrColor(
          name: 'orangeTerreBattue975Active',
          description: "Color(0xfffac5b8)",
          color: DsfrColors.orangeTerreBattue975Active),
      DsfrColor(
          name: 'brownCafeCreme975Active', description: "Color(0xffeacf91)", color: DsfrColors.brownCafeCreme975Active),
      DsfrColor(
          name: 'brownCaramel975Active', description: "Color(0xffecc9b5)", color: DsfrColors.brownCaramel975Active),
      DsfrColor(name: 'brownOpera975Active', description: "Color(0xffecc9b5)", color: DsfrColors.brownOpera975Active),
      DsfrColor(
          name: 'greenTilleulVerveine975Hover',
          description: "Color(0xfffce552)",
          color: DsfrColors.greenTilleulVerveine975Hover),
      DsfrColor(
          name: 'beigeGrisGalet975Hover', description: "Color(0xffeadecd)", color: DsfrColors.beigeGrisGalet975Hover),
      DsfrColor(
          name: 'greenBourgeon975Hover', description: "Color(0xffa7fc62)", color: DsfrColors.greenBourgeon975Hover),
      DsfrColor(
          name: 'greenEmeraude975Hover', description: "Color(0xff94f9b9)", color: DsfrColors.greenEmeraude975Hover),
      DsfrColor(name: 'greenMenthe975Hover', description: "Color(0xff84f9e7)", color: DsfrColors.greenMenthe975Hover),
      DsfrColor(name: 'blueCumulus975Hover', description: "Color(0xffd3dffc)", color: DsfrColors.blueCumulus975Hover),
      DsfrColor(name: 'blueEcume975Hover', description: "Color(0xffd7dffb)", color: DsfrColors.blueEcume975Hover),
      DsfrColor(
          name: 'greenArchipel975Hover', description: "Color(0xff99f2f8)", color: DsfrColors.greenArchipel975Hover),
      DsfrColor(
          name: 'purpleGlycine975Hover', description: "Color(0xfffcd4f8)", color: DsfrColors.purpleGlycine975Hover),
      DsfrColor(name: 'pinkMacaron975Hover', description: "Color(0xfffcd8d0)", color: DsfrColors.pinkMacaron975Hover),
      DsfrColor(name: 'pinkTuile975Hover', description: "Color(0xfffcd7d3)", color: DsfrColors.pinkTuile975Hover),
      DsfrColor(
          name: 'yellowTournesol975Hover', description: "Color(0xfffce086)", color: DsfrColors.yellowTournesol975Hover),
      DsfrColor(
          name: 'yellowMoutarde975Hover', description: "Color(0xfffcdca3)", color: DsfrColors.yellowMoutarde975Hover),
      DsfrColor(
          name: 'orangeTerreBattue975Hover',
          description: "Color(0xfffcd8d0)",
          color: DsfrColors.orangeTerreBattue975Hover),
      DsfrColor(
          name: 'brownCafeCreme975Hover', description: "Color(0xfff2deb6)", color: DsfrColors.brownCafeCreme975Hover),
      DsfrColor(name: 'brownCaramel975Hover', description: "Color(0xfff1dbcf)", color: DsfrColors.brownCaramel975Hover),
      DsfrColor(name: 'brownOpera975Hover', description: "Color(0xfff1dbcf)", color: DsfrColors.brownOpera975Hover),
      DsfrColor(
          name: 'greenTilleulVerveineMain707',
          description: "Color(0xffb7a73f)",
          color: DsfrColors.greenTilleulVerveineMain707),
      DsfrColor(name: 'greenBourgeonMain640', description: "Color(0xff68a532)", color: DsfrColors.greenBourgeonMain640),
      DsfrColor(name: 'greenMentheMain548', description: "Color(0xff009081)", color: DsfrColors.greenMentheMain548),
      DsfrColor(name: 'greenArchipelMain557', description: "Color(0xff009099)", color: DsfrColors.greenArchipelMain557),
      DsfrColor(name: 'blueEcumeMain400', description: "Color(0xff465f9d)", color: DsfrColors.blueEcumeMain400),
      DsfrColor(
          name: 'brownCafeCremeMain782', description: "Color(0xffd1b781)", color: DsfrColors.brownCafeCremeMain782),
      DsfrColor(name: 'brownCaramelMain648', description: "Color(0xffc08c65)", color: DsfrColors.brownCaramelMain648),
      DsfrColor(name: 'brownOperaMain680', description: "Color(0xffbd987a)", color: DsfrColors.brownOperaMain680),
      DsfrColor(
          name: 'beigeGrisGaletMain702', description: "Color(0xffaea397)", color: DsfrColors.beigeGrisGaletMain702),
      DsfrColor(
          name: 'orangeTerreBattueMain645',
          description: "Color(0xffe4794a)",
          color: DsfrColors.orangeTerreBattueMain645),
      DsfrColor(
          name: 'yellowMoutardeMain679', description: "Color(0xffc3992a)", color: DsfrColors.yellowMoutardeMain679),
      DsfrColor(
          name: 'yellowTournesolMain731', description: "Color(0xffc8aa39)", color: DsfrColors.yellowTournesolMain731),
      DsfrColor(name: 'pinkTuileMain556', description: "Color(0xffce614a)", color: DsfrColors.pinkTuileMain556),
      DsfrColor(name: 'pinkMacaronMain689', description: "Color(0xffe18b76)", color: DsfrColors.pinkMacaronMain689),
      DsfrColor(name: 'purpleGlycineMain494', description: "Color(0xffa558a0)", color: DsfrColors.purpleGlycineMain494),
      DsfrColor(name: 'blueCumulusMain526', description: "Color(0xff417dc4)", color: DsfrColors.blueCumulusMain526),
      DsfrColor(name: 'greenEmeraudeMain632', description: "Color(0xff00a95f)", color: DsfrColors.greenEmeraudeMain632),
      DsfrColor(
          name: 'greenTilleulVerveineMain707Hover',
          description: "Color(0xffe3cf50)",
          color: DsfrColors.greenTilleulVerveineMain707Hover),
      DsfrColor(
          name: 'greenBourgeonMain640Hover',
          description: "Color(0xff87d544)",
          color: DsfrColors.greenBourgeonMain640Hover),
      DsfrColor(
          name: 'greenMentheMain548Hover', description: "Color(0xff00c7b3)", color: DsfrColors.greenMentheMain548Hover),
      DsfrColor(
          name: 'greenArchipelMain557Hover',
          description: "Color(0xff00c6d2)",
          color: DsfrColors.greenArchipelMain557Hover),
      DsfrColor(
          name: 'blueEcumeMain400Hover', description: "Color(0xff6f89d1)", color: DsfrColors.blueEcumeMain400Hover),
      DsfrColor(
          name: 'brownCafeCremeMain782Hover',
          description: "Color(0xffa38e63)",
          color: DsfrColors.brownCafeCremeMain782Hover),
      DsfrColor(
          name: 'brownCaramelMain648Hover',
          description: "Color(0xffe6b594)",
          color: DsfrColors.brownCaramelMain648Hover),
      DsfrColor(
          name: 'brownOperaMain680Hover', description: "Color(0xffe1c0a8)", color: DsfrColors.brownOperaMain680Hover),
      DsfrColor(
          name: 'beigeGrisGaletMain702Hover',
          description: "Color(0xffd5cabd)",
          color: DsfrColors.beigeGrisGaletMain702Hover),
      DsfrColor(
          name: 'orangeTerreBattueMain645Hover',
          description: "Color(0xfff1a892)",
          color: DsfrColors.orangeTerreBattueMain645Hover),
      DsfrColor(
          name: 'yellowMoutardeMain679Hover',
          description: "Color(0xfff5c137)",
          color: DsfrColors.yellowMoutardeMain679Hover),
      DsfrColor(
          name: 'yellowTournesolMain731Hover',
          description: "Color(0xff967f29)",
          color: DsfrColors.yellowTournesolMain731Hover),
      DsfrColor(
          name: 'pinkTuileMain556Hover', description: "Color(0xffe89082)", color: DsfrColors.pinkTuileMain556Hover),
      DsfrColor(
          name: 'pinkMacaronMain689Hover', description: "Color(0xffeabab1)", color: DsfrColors.pinkMacaronMain689Hover),
      DsfrColor(
          name: 'purpleGlycineMain494Hover',
          description: "Color(0xffd282cd)",
          color: DsfrColors.purpleGlycineMain494Hover),
      DsfrColor(
          name: 'blueCumulusMain526Hover', description: "Color(0xff74a5ec)", color: DsfrColors.blueCumulusMain526Hover),
      DsfrColor(
          name: 'greenEmeraudeMain632Hover',
          description: "Color(0xff00e180)",
          color: DsfrColors.greenEmeraudeMain632Hover),
      DsfrColor(
          name: 'greenBourgeonMain640Active',
          description: "Color(0xff95e94a)",
          color: DsfrColors.greenBourgeonMain640Active),
      DsfrColor(
          name: 'greenTilleulVerveineMain707Active',
          description: "Color(0xfff6e157)",
          color: DsfrColors.greenTilleulVerveineMain707Active),
      DsfrColor(
          name: 'greenMentheMain548Active',
          description: "Color(0xff00e2cb)",
          color: DsfrColors.greenMentheMain548Active),
      DsfrColor(
          name: 'greenArchipelMain557Active',
          description: "Color(0xff00e0ee)",
          color: DsfrColors.greenArchipelMain557Active),
      DsfrColor(
          name: 'blueEcumeMain400Active', description: "Color(0xff8b9eda)", color: DsfrColors.blueEcumeMain400Active),
      DsfrColor(
          name: 'brownCafeCremeMain782Active',
          description: "Color(0xff8b7954)",
          color: DsfrColors.brownCafeCremeMain782Active),
      DsfrColor(
          name: 'brownCaramelMain648Active',
          description: "Color(0xffeccab6)",
          color: DsfrColors.brownCaramelMain648Active),
      DsfrColor(
          name: 'brownOperaMain680Active', description: "Color(0xffe9d4c5)", color: DsfrColors.brownOperaMain680Active),
      DsfrColor(
          name: 'beigeGrisGaletMain702Active',
          description: "Color(0xffe2dbd4)",
          color: DsfrColors.beigeGrisGaletMain702Active),
      DsfrColor(
          name: 'orangeTerreBattueMain645Active',
          description: "Color(0xfff4bfb1)",
          color: DsfrColors.orangeTerreBattueMain645Active),
      DsfrColor(
          name: 'yellowMoutardeMain679Active',
          description: "Color(0xfffcd17b)",
          color: DsfrColors.yellowMoutardeMain679Active),
      DsfrColor(
          name: 'yellowTournesolMain731Active',
          description: "Color(0xff7d6a20)",
          color: DsfrColors.yellowTournesolMain731Active),
      DsfrColor(
          name: 'pinkTuileMain556Active', description: "Color(0xffeba89f)", color: DsfrColors.pinkTuileMain556Active),
      DsfrColor(
          name: 'pinkMacaronMain689Active',
          description: "Color(0xfff0cfc9)",
          color: DsfrColors.pinkMacaronMain689Active),
      DsfrColor(
          name: 'purpleGlycineMain494Active',
          description: "Color(0xffdb9cd6)",
          color: DsfrColors.purpleGlycineMain494Active),
      DsfrColor(
          name: 'blueCumulusMain526Active',
          description: "Color(0xff96b8f0)",
          color: DsfrColors.blueCumulusMain526Active),
      DsfrColor(
          name: 'greenEmeraudeMain632Active',
          description: "Color(0xff00fb90)",
          color: DsfrColors.greenEmeraudeMain632Active),
      DsfrColor(name: 'brownCaramelSun425', description: "Color(0xff845d48)", color: DsfrColors.brownCaramelSun425),
      DsfrColor(name: 'beigeGrisGaletSun407', description: "Color(0xff6a6156)", color: DsfrColors.beigeGrisGaletSun407),
      DsfrColor(name: 'brownOperaSun395', description: "Color(0xff745b47)", color: DsfrColors.brownOperaSun395),
      DsfrColor(name: 'brownCafeCremeSun383', description: "Color(0xff685c48)", color: DsfrColors.brownCafeCremeSun383),
      DsfrColor(
          name: 'orangeTerreBattueSun370', description: "Color(0xff755348)", color: DsfrColors.orangeTerreBattueSun370),
      DsfrColor(name: 'yellowMoutardeSun348', description: "Color(0xff695240)", color: DsfrColors.yellowMoutardeSun348),
      DsfrColor(
          name: 'yellowTournesolSun407', description: "Color(0xff716043)", color: DsfrColors.yellowTournesolSun407),
      DsfrColor(name: 'pinkMacaronSun406', description: "Color(0xff8d533e)", color: DsfrColors.pinkMacaronSun406),
      DsfrColor(name: 'purpleGlycineSun319', description: "Color(0xff6e445a)", color: DsfrColors.purpleGlycineSun319),
      DsfrColor(name: 'blueCumulusSun368', description: "Color(0xff3558a2)", color: DsfrColors.blueCumulusSun368),
      DsfrColor(name: 'greenArchipelSun391', description: "Color(0xff006a6f)", color: DsfrColors.greenArchipelSun391),
      DsfrColor(name: 'blueEcumeSun247', description: "Color(0xff2f4077)", color: DsfrColors.blueEcumeSun247),
      DsfrColor(name: 'greenMentheSun373', description: "Color(0xff37635f)", color: DsfrColors.greenMentheSun373),
      DsfrColor(name: 'greenEmeraudeSun425', description: "Color(0xff297254)", color: DsfrColors.greenEmeraudeSun425),
      DsfrColor(name: 'greenBourgeonSun425', description: "Color(0xff447049)", color: DsfrColors.greenBourgeonSun425),
      DsfrColor(
          name: 'greenTilleulVerveineSun418',
          description: "Color(0xff66673d)",
          color: DsfrColors.greenTilleulVerveineSun418),
      DsfrColor(name: 'pinkTuileSun425', description: "Color(0xffa94645)", color: DsfrColors.pinkTuileSun425),
      DsfrColor(name: 'pinkTuileSun425Hover', description: "Color(0xffd5706f)", color: DsfrColors.pinkTuileSun425Hover),
      DsfrColor(
          name: 'brownCaramelSun425Hover', description: "Color(0xffbb8568)", color: DsfrColors.brownCaramelSun425Hover),
      DsfrColor(
          name: 'beigeGrisGaletSun407Hover',
          description: "Color(0xff988b7c)",
          color: DsfrColors.beigeGrisGaletSun407Hover),
      DsfrColor(
          name: 'brownOperaSun395Hover', description: "Color(0xffa78468)", color: DsfrColors.brownOperaSun395Hover),
      DsfrColor(
          name: 'brownCafeCremeSun383Hover',
          description: "Color(0xff97866a)",
          color: DsfrColors.brownCafeCremeSun383Hover),
      DsfrColor(
          name: 'orangeTerreBattueSun370Hover',
          description: "Color(0xffab7b6b)",
          color: DsfrColors.orangeTerreBattueSun370Hover),
      DsfrColor(
          name: 'yellowMoutardeSun348Hover',
          description: "Color(0xff9b7b61)",
          color: DsfrColors.yellowMoutardeSun348Hover),
      DsfrColor(
          name: 'yellowTournesolSun407Hover',
          description: "Color(0xffa28a62)",
          color: DsfrColors.yellowTournesolSun407Hover),
      DsfrColor(
          name: 'blueCumulusSun368Hover', description: "Color(0xff5982e0)", color: DsfrColors.blueCumulusSun368Hover),
      DsfrColor(
          name: 'purpleGlycineSun319Hover',
          description: "Color(0xffa66989)",
          color: DsfrColors.purpleGlycineSun319Hover),
      DsfrColor(
          name: 'greenArchipelSun391Hover',
          description: "Color(0xff009fa7)",
          color: DsfrColors.greenArchipelSun391Hover),
      DsfrColor(name: 'blueEcumeSun247Hover', description: "Color(0xff4e68bb)", color: DsfrColors.blueEcumeSun247Hover),
      DsfrColor(
          name: 'greenMentheSun373Hover', description: "Color(0xff53918c)", color: DsfrColors.greenMentheSun373Hover),
      DsfrColor(
          name: 'greenEmeraudeSun425Hover',
          description: "Color(0xff3ea47a)",
          color: DsfrColors.greenEmeraudeSun425Hover),
      DsfrColor(
          name: 'greenBourgeonSun425Hover',
          description: "Color(0xff639f6a)",
          color: DsfrColors.greenBourgeonSun425Hover),
      DsfrColor(
          name: 'greenTilleulVerveineSun418Hover',
          description: "Color(0xff929359)",
          color: DsfrColors.greenTilleulVerveineSun418Hover),
      DsfrColor(
          name: 'pinkMacaronSun406Hover', description: "Color(0xffca795c)", color: DsfrColors.pinkMacaronSun406Hover),
      DsfrColor(
          name: 'pinkTuileSun425Active', description: "Color(0xffda8a89)", color: DsfrColors.pinkTuileSun425Active),
      DsfrColor(
          name: 'brownCaramelSun425Active',
          description: "Color(0xffd69978)",
          color: DsfrColors.brownCaramelSun425Active),
      DsfrColor(
          name: 'beigeGrisGaletSun407Active',
          description: "Color(0xffafa08f)",
          color: DsfrColors.beigeGrisGaletSun407Active),
      DsfrColor(
          name: 'brownOperaSun395Active', description: "Color(0xffc09979)", color: DsfrColors.brownOperaSun395Active),
      DsfrColor(
          name: 'brownCafeCremeSun383Active',
          description: "Color(0xffae9b7b)",
          color: DsfrColors.brownCafeCremeSun383Active),
      DsfrColor(
          name: 'orangeTerreBattueSun370Active',
          description: "Color(0xffc68f7d)",
          color: DsfrColors.orangeTerreBattueSun370Active),
      DsfrColor(
          name: 'yellowMoutardeSun348Active',
          description: "Color(0xffb58f72)",
          color: DsfrColors.yellowMoutardeSun348Active),
      DsfrColor(
          name: 'yellowTournesolSun407Active',
          description: "Color(0xffba9f72)",
          color: DsfrColors.yellowTournesolSun407Active),
      DsfrColor(
          name: 'pinkMacaronSun406Active', description: "Color(0xffe08e73)", color: DsfrColors.pinkMacaronSun406Active),
      DsfrColor(
          name: 'blueCumulusSun368Active', description: "Color(0xff7996e6)", color: DsfrColors.blueCumulusSun368Active),
      DsfrColor(
          name: 'purpleGlycineSun319Active',
          description: "Color(0xffbb7f9e)",
          color: DsfrColors.purpleGlycineSun319Active),
      DsfrColor(
          name: 'greenArchipelSun391Active',
          description: "Color(0xff00bbc3)",
          color: DsfrColors.greenArchipelSun391Active),
      DsfrColor(
          name: 'blueEcumeSun247Active', description: "Color(0xff667dcf)", color: DsfrColors.blueEcumeSun247Active),
      DsfrColor(
          name: 'greenMentheSun373Active', description: "Color(0xff62a9a2)", color: DsfrColors.greenMentheSun373Active),
      DsfrColor(
          name: 'greenEmeraudeSun425Active',
          description: "Color(0xff49bc8d)",
          color: DsfrColors.greenEmeraudeSun425Active),
      DsfrColor(
          name: 'greenBourgeonSun425Active',
          description: "Color(0xff72b77a)",
          color: DsfrColors.greenBourgeonSun425Active),
      DsfrColor(
          name: 'greenTilleulVerveineSun418Active',
          description: "Color(0xffa7a967)",
          color: DsfrColors.greenTilleulVerveineSun418Active),
      DsfrColor(name: 'grey50', description: "Color(0xff161616)", color: DsfrColors.grey50),
      DsfrColor(name: 'grey50Hover', description: "Color(0xff343434)", color: DsfrColors.grey50Hover),
      DsfrColor(name: 'grey50Active', description: "Color(0xff474747)", color: DsfrColors.grey50Active),
      DsfrColor(name: 'grey75', description: "Color(0xff1e1e1e)", color: DsfrColors.grey75),
      DsfrColor(name: 'grey75Hover', description: "Color(0xff3f3f3f)", color: DsfrColors.grey75Hover),
      DsfrColor(name: 'grey75Active', description: "Color(0xff525252)", color: DsfrColors.grey75Active),
      DsfrColor(name: 'grey100', description: "Color(0xff242424)", color: DsfrColors.grey100),
      DsfrColor(name: 'grey100Hover', description: "Color(0xff474747)", color: DsfrColors.grey100Hover),
      DsfrColor(name: 'grey100Active', description: "Color(0xff5b5b5b)", color: DsfrColors.grey100Active),
      DsfrColor(name: 'grey125', description: "Color(0xff2a2a2a)", color: DsfrColors.grey125),
      DsfrColor(name: 'grey125Hover', description: "Color(0xff4e4e4e)", color: DsfrColors.grey125Hover),
      DsfrColor(name: 'grey125Active', description: "Color(0xff636363)", color: DsfrColors.grey125Active),
      DsfrColor(name: 'grey150', description: "Color(0xff2f2f2f)", color: DsfrColors.grey150),
      DsfrColor(name: 'grey150Hover', description: "Color(0xff545454)", color: DsfrColors.grey150Hover),
      DsfrColor(name: 'grey150Active', description: "Color(0xff696969)", color: DsfrColors.grey150Active),
      DsfrColor(name: 'grey175', description: "Color(0xff353535)", color: DsfrColors.grey175),
      DsfrColor(name: 'grey175Hover', description: "Color(0xff5c5c5c)", color: DsfrColors.grey175Hover),
      DsfrColor(name: 'grey175Active', description: "Color(0xff717171)", color: DsfrColors.grey175Active),
      DsfrColor(name: 'grey200', description: "Color(0xff3a3a3a)", color: DsfrColors.grey200),
      DsfrColor(name: 'grey200Hover', description: "Color(0xff616161)", color: DsfrColors.grey200Hover),
      DsfrColor(name: 'grey200Active', description: "Color(0xff777777)", color: DsfrColors.grey200Active),
      DsfrColor(name: 'grey425', description: "Color(0xff666666)", color: DsfrColors.grey425),
      DsfrColor(name: 'grey425Hover', description: "Color(0xff919191)", color: DsfrColors.grey425Hover),
      DsfrColor(name: 'grey425Active', description: "Color(0xffa6a6a6)", color: DsfrColors.grey425Active),
      DsfrColor(name: 'grey625', description: "Color(0xff929292)", color: DsfrColors.grey625),
      DsfrColor(name: 'grey625Hover', description: "Color(0xffbbbbbb)", color: DsfrColors.grey625Hover),
      DsfrColor(name: 'grey625Active', description: "Color(0xffcecece)", color: DsfrColors.grey625Active),
      DsfrColor(name: 'grey850', description: "Color(0xffcecece)", color: DsfrColors.grey850),
      DsfrColor(name: 'grey850Hover', description: "Color(0xffa8a8a8)", color: DsfrColors.grey850Hover),
      DsfrColor(name: 'grey850Active', description: "Color(0xff939393)", color: DsfrColors.grey850Active),
      DsfrColor(name: 'grey900', description: "Color(0xffdedede)", color: DsfrColors.grey900),
      DsfrColor(name: 'grey900Hover', description: "Color(0xffbababa)", color: DsfrColors.grey900Hover),
      DsfrColor(name: 'grey900Active', description: "Color(0xffa6a6a6)", color: DsfrColors.grey900Active),
      DsfrColor(name: 'grey925', description: "Color(0xffe6e6e6)", color: DsfrColors.grey925),
      DsfrColor(name: 'grey925Hover', description: "Color(0xffc4c4c4)", color: DsfrColors.grey925Hover),
      DsfrColor(name: 'grey925Active', description: "Color(0xffb3b3b3)", color: DsfrColors.grey925Active),
      DsfrColor(name: 'grey950', description: "Color(0xffededed)", color: DsfrColors.grey950),
      DsfrColor(name: 'grey950Hover', description: "Color(0xffd1d1d1)", color: DsfrColors.grey950Hover),
      DsfrColor(name: 'grey950Active', description: "Color(0xffc2c2c2)", color: DsfrColors.grey950Active),
      DsfrColor(name: 'grey975', description: "Color(0xfff5f5f5)", color: DsfrColors.grey975),
      DsfrColor(name: 'grey975Hover', description: "Color(0xffdedede)", color: DsfrColors.grey975Hover),
      DsfrColor(name: 'grey975Active', description: "Color(0xffcfcfcf)", color: DsfrColors.grey975Active),
      DsfrColor(name: 'grey1000', description: "Color(0xffffffff)", color: DsfrColors.grey1000),
      DsfrColor(name: 'grey1000Hover', description: "Color(0xfff6f6f6)", color: DsfrColors.grey1000Hover),
      DsfrColor(name: 'grey1000Active', description: "Color(0xffededed)", color: DsfrColors.grey1000Active),
      DsfrColor(name: 'greyMain525', description: "Color(0xff7a7a7a)", color: DsfrColors.greyMain525),
      DsfrColor(name: 'greyMain525Hover', description: "Color(0xffa6a6a6)", color: DsfrColors.greyMain525Hover),
      DsfrColor(name: 'greyMain525Active', description: "Color(0xffbababa)", color: DsfrColors.greyMain525Active),
      DsfrColor(name: 'transparent', description: "Color(0x00ffffff)", color: DsfrColors.transparent),
      DsfrColor(name: 'transparentActive', description: "Color(0x29ffffff)", color: DsfrColors.transparentActive),
      DsfrColor(name: 'transparentHover', description: "Color(0x14ffffff)", color: DsfrColors.transparentHover),
      DsfrColor(name: 'redMarianne425', description: "Color(0xffc9191e)", color: DsfrColors.redMarianne425),
      DsfrColor(name: 'redMarianne425Hover', description: "Color(0xfff93f42)", color: DsfrColors.redMarianne425Hover),
      DsfrColor(name: 'redMarianne425Active', description: "Color(0xfff95a5c)", color: DsfrColors.redMarianne425Active),
      DsfrColor(name: 'blueFrance850', description: "Color(0xffcacafb)", color: DsfrColors.blueFrance850),
      DsfrColor(name: 'redMarianne850', description: "Color(0xfffcbfbf)", color: DsfrColors.redMarianne850),
      DsfrColor(name: 'blueFrance850Hover', description: "Color(0xffa1a1f8)", color: DsfrColors.blueFrance850Hover),
      DsfrColor(name: 'redMarianne850Hover', description: "Color(0xfffb8f8f)", color: DsfrColors.redMarianne850Hover),
      DsfrColor(name: 'blueFrance850Active', description: "Color(0xff8b8bf6)", color: DsfrColors.blueFrance850Active),
      DsfrColor(name: 'redMarianne850Active', description: "Color(0xfffa7474)", color: DsfrColors.redMarianne850Active),
      DsfrColor(name: 'blueFranceSun113', description: "Color(0xff000091)", color: DsfrColors.blueFranceSun113),
      DsfrColor(
          name: 'blueFranceSun113Hover', description: "Color(0xff1212ff)", color: DsfrColors.blueFranceSun113Hover),
      DsfrColor(
          name: 'blueFranceSun113Active', description: "Color(0xff2323ff)", color: DsfrColors.blueFranceSun113Active),
      DsfrColor(name: 'blueFrance925', description: "Color(0xffe3e3fd)", color: DsfrColors.blueFrance925),
      DsfrColor(name: 'redMarianne925', description: "Color(0xfffddede)", color: DsfrColors.redMarianne925),
      DsfrColor(name: 'blueFrance925Hover', description: "Color(0xffc1c1fb)", color: DsfrColors.blueFrance925Hover),
      DsfrColor(name: 'redMarianne925Hover', description: "Color(0xfffbb6b6)", color: DsfrColors.redMarianne925Hover),
      DsfrColor(name: 'blueFrance925Active', description: "Color(0xffadadf9)", color: DsfrColors.blueFrance925Active),
      DsfrColor(name: 'redMarianne925Active', description: "Color(0xfffa9e9e)", color: DsfrColors.redMarianne925Active),
      DsfrColor(name: 'blueFrance950', description: "Color(0xffececfe)", color: DsfrColors.blueFrance950),
      DsfrColor(name: 'redMarianne950', description: "Color(0xfffee9e9)", color: DsfrColors.redMarianne950),
      DsfrColor(name: 'blueFrance950Hover', description: "Color(0xffcecefc)", color: DsfrColors.blueFrance950Hover),
      DsfrColor(name: 'redMarianne950Hover', description: "Color(0xfffdc5c5)", color: DsfrColors.redMarianne950Hover),
      DsfrColor(name: 'blueFrance950Active', description: "Color(0xffbbbbfc)", color: DsfrColors.blueFrance950Active),
      DsfrColor(name: 'redMarianne950Active', description: "Color(0xfffcafaf)", color: DsfrColors.redMarianne950Active),
      DsfrColor(name: 'blueFrance975', description: "Color(0xfff5f5fe)", color: DsfrColors.blueFrance975),
      DsfrColor(name: 'redMarianne975', description: "Color(0xfffef4f4)", color: DsfrColors.redMarianne975),
      DsfrColor(name: 'blueFrance975Hover', description: "Color(0xffdcdcfc)", color: DsfrColors.blueFrance975Hover),
      DsfrColor(name: 'redMarianne975Hover', description: "Color(0xfffcd7d7)", color: DsfrColors.redMarianne975Hover),
      DsfrColor(name: 'blueFrance975Active', description: "Color(0xffcbcbfa)", color: DsfrColors.blueFrance975Active),
      DsfrColor(name: 'redMarianne975Active', description: "Color(0xfffac4c4)", color: DsfrColors.redMarianne975Active),
      DsfrColor(name: 'blueFranceMain525', description: "Color(0xff6a6af4)", color: DsfrColors.blueFranceMain525),
      DsfrColor(name: 'redMarianneMain472', description: "Color(0xffe1000f)", color: DsfrColors.redMarianneMain472),
      DsfrColor(
          name: 'blueFranceMain525Hover', description: "Color(0xff9898f8)", color: DsfrColors.blueFranceMain525Hover),
      DsfrColor(
          name: 'redMarianneMain472Hover', description: "Color(0xffff292f)", color: DsfrColors.redMarianneMain472Hover),
      DsfrColor(
          name: 'blueFranceMain525Active', description: "Color(0xffaeaef9)", color: DsfrColors.blueFranceMain525Active),
      DsfrColor(
          name: 'redMarianneMain472Active',
          description: "Color(0xffff4347)",
          color: DsfrColors.redMarianneMain472Active),
      DsfrColor(name: 'success425', description: "Color(0xff18753c)", color: DsfrColors.success425),
      DsfrColor(name: 'warning425', description: "Color(0xffb34000)", color: DsfrColors.warning425),
      DsfrColor(name: 'error425', description: "Color(0xffce0500)", color: DsfrColors.error425),
      DsfrColor(name: 'info425', description: "Color(0xff0063cb)", color: DsfrColors.info425),
      DsfrColor(name: 'error425Hover', description: "Color(0xffff2725)", color: DsfrColors.error425Hover),
      DsfrColor(name: 'info425Hover', description: "Color(0xff3b87ff)", color: DsfrColors.info425Hover),
      DsfrColor(name: 'success425Hover', description: "Color(0xff27a959)", color: DsfrColors.success425Hover),
      DsfrColor(name: 'warning425Hover', description: "Color(0xffff6218)", color: DsfrColors.warning425Hover),
      DsfrColor(name: 'success425Active', description: "Color(0xff2fc368)", color: DsfrColors.success425Active),
      DsfrColor(name: 'warning425Active', description: "Color(0xffff7a55)", color: DsfrColors.warning425Active),
      DsfrColor(name: 'error425Active', description: "Color(0xffff4140)", color: DsfrColors.error425Active),
      DsfrColor(name: 'info425Active', description: "Color(0xff6798ff)", color: DsfrColors.info425Active),
      DsfrColor(name: 'success850', description: "Color(0xff39ea7d)", color: DsfrColors.success850),
      DsfrColor(name: 'warning850', description: "Color(0xffffbdb2)", color: DsfrColors.warning850),
      DsfrColor(name: 'error850', description: "Color(0xffffbdbd)", color: DsfrColors.error850),
      DsfrColor(name: 'info850', description: "Color(0xffbdcdff)", color: DsfrColors.info850),
      DsfrColor(name: 'success925', description: "Color(0xff86fda8)", color: DsfrColors.success925),
      DsfrColor(name: 'warning925', description: "Color(0xffffe0db)", color: DsfrColors.warning925),
      DsfrColor(name: 'error925', description: "Color(0xffffdbdb)", color: DsfrColors.error925),
      DsfrColor(name: 'info925', description: "Color(0xffdbe4ff)", color: DsfrColors.info925),
      DsfrColor(name: 'success950', description: "Color(0xffb8fec9)", color: DsfrColors.success950),
      DsfrColor(name: 'warning950', description: "Color(0xffffe9e6)", color: DsfrColors.warning950),
      DsfrColor(name: 'error950', description: "Color(0xffffe9e9)", color: DsfrColors.error950),
      DsfrColor(name: 'info950', description: "Color(0xffe8edff)", color: DsfrColors.info950),
      DsfrColor(name: 'success950Hover', description: "Color(0xff46fd89)", color: DsfrColors.success950Hover),
      DsfrColor(name: 'warning950Hover', description: "Color(0xffffc6bd)", color: DsfrColors.warning950Hover),
      DsfrColor(name: 'error950Hover', description: "Color(0xffffc5c5)", color: DsfrColors.error950Hover),
      DsfrColor(name: 'info950Hover', description: "Color(0xffc2d1ff)", color: DsfrColors.info950Hover),
      DsfrColor(name: 'success950Active', description: "Color(0xff34eb7b)", color: DsfrColors.success950Active),
      DsfrColor(name: 'warning950Active', description: "Color(0xffffb0a2)", color: DsfrColors.warning950Active),
      DsfrColor(name: 'error950Active', description: "Color(0xffffafaf)", color: DsfrColors.error950Active),
      DsfrColor(name: 'info950Active', description: "Color(0xffa9bfff)", color: DsfrColors.info950Active),
      DsfrColor(name: 'success975', description: "Color(0xffe1fee8)", color: DsfrColors.success975),
      DsfrColor(name: 'warning975', description: "Color(0xfffff6f5)", color: DsfrColors.warning975),
      DsfrColor(name: 'error975', description: "Color(0xfffff5f5)", color: DsfrColors.error975),
      DsfrColor(name: 'info975', description: "Color(0xfff5f7ff)", color: DsfrColors.info975),
      DsfrColor(name: 'successMain525', description: "Color(0xff1f8e4a)", color: DsfrColors.successMain525),
      DsfrColor(name: 'warningMain525', description: "Color(0xffd64f00)", color: DsfrColors.warningMain525),
      DsfrColor(name: 'infoMain525', description: "Color(0xff007af5)", color: DsfrColors.infoMain525),
      DsfrColor(name: 'errorMain525', description: "Color(0xfff50800)", color: DsfrColors.errorMain525),
      DsfrColor(name: 'focus525', description: "Color(0xff0a76f6)", color: DsfrColors.focus525),
      DsfrColor(name: 'greenEmeraude75', description: "Color(0xff142018)", color: DsfrColors.greenEmeraude75),
      DsfrColor(name: 'greenMenthe75', description: "Color(0xff15201e)", color: DsfrColors.greenMenthe75),
      DsfrColor(name: 'greenArchipel75', description: "Color(0xff152021)", color: DsfrColors.greenArchipel75),
      DsfrColor(name: 'blueEcume75', description: "Color(0xff171d2f)", color: DsfrColors.blueEcume75),
      DsfrColor(name: 'blueCumulus75', description: "Color(0xff171e2b)", color: DsfrColors.blueCumulus75),
      DsfrColor(name: 'purpleGlycine75', description: "Color(0xff251a24)", color: DsfrColors.purpleGlycine75),
      DsfrColor(name: 'pinkMacaron75', description: "Color(0xff261b19)", color: DsfrColors.pinkMacaron75),
      DsfrColor(name: 'pinkTuile75', description: "Color(0xff281b19)", color: DsfrColors.pinkTuile75),
      DsfrColor(name: 'yellowTournesol75', description: "Color(0xff221d11)", color: DsfrColors.yellowTournesol75),
      DsfrColor(name: 'yellowMoutarde75', description: "Color(0xff231d14)", color: DsfrColors.yellowMoutarde75),
      DsfrColor(name: 'orangeTerreBattue75', description: "Color(0xff281a16)", color: DsfrColors.orangeTerreBattue75),
      DsfrColor(name: 'brownCafeCreme75', description: "Color(0xff211d16)", color: DsfrColors.brownCafeCreme75),
      DsfrColor(name: 'brownCaramel75', description: "Color(0xff251c16)", color: DsfrColors.brownCaramel75),
      DsfrColor(name: 'beigeGrisGalet75', description: "Color(0xff211d19)", color: DsfrColors.beigeGrisGalet75),
      DsfrColor(name: 'brownOpera75', description: "Color(0xff241c17)", color: DsfrColors.brownOpera75),
      DsfrColor(
          name: 'greenTilleulVerveine75', description: "Color(0xff201e14)", color: DsfrColors.greenTilleulVerveine75),
      DsfrColor(name: 'greenBourgeon75', description: "Color(0xff182014)", color: DsfrColors.greenBourgeon75),
      DsfrColor(
          name: 'greenTilleulVerveine75Hover',
          description: "Color(0xff433f2e)",
          color: DsfrColors.greenTilleulVerveine75Hover),
      DsfrColor(name: 'greenEmeraude75Hover', description: "Color(0xff2e4335)", color: DsfrColors.greenEmeraude75Hover),
      DsfrColor(name: 'greenMenthe75Hover', description: "Color(0xff30433f)", color: DsfrColors.greenMenthe75Hover),
      DsfrColor(name: 'greenArchipel75Hover', description: "Color(0xff2f4345)", color: DsfrColors.greenArchipel75Hover),
      DsfrColor(name: 'blueEcume75Hover', description: "Color(0xff333e5e)", color: DsfrColors.blueEcume75Hover),
      DsfrColor(name: 'purpleGlycine75Hover', description: "Color(0xff4c394a)", color: DsfrColors.purpleGlycine75Hover),
      DsfrColor(name: 'pinkMacaron75Hover', description: "Color(0xff4e3a37)", color: DsfrColors.pinkMacaron75Hover),
      DsfrColor(name: 'pinkTuile75Hover', description: "Color(0xff513a37)", color: DsfrColors.pinkTuile75Hover),
      DsfrColor(
          name: 'yellowTournesol75Hover', description: "Color(0xff473e29)", color: DsfrColors.yellowTournesol75Hover),
      DsfrColor(
          name: 'yellowMoutarde75Hover', description: "Color(0xff483e2e)", color: DsfrColors.yellowMoutarde75Hover),
      DsfrColor(
          name: 'orangeTerreBattue75Hover',
          description: "Color(0xff513932)",
          color: DsfrColors.orangeTerreBattue75Hover),
      DsfrColor(
          name: 'brownCafeCreme75Hover', description: "Color(0xff453e31)", color: DsfrColors.brownCafeCreme75Hover),
      DsfrColor(name: 'brownCaramel75Hover', description: "Color(0xff4c3c31)", color: DsfrColors.brownCaramel75Hover),
      DsfrColor(
          name: 'beigeGrisGalet75Hover', description: "Color(0xff453e37)", color: DsfrColors.beigeGrisGalet75Hover),
      DsfrColor(name: 'brownOpera75Hover', description: "Color(0xff4a3c33)", color: DsfrColors.brownOpera75Hover),
      DsfrColor(name: 'greenBourgeon75Hover', description: "Color(0xff35432e)", color: DsfrColors.greenBourgeon75Hover),
      DsfrColor(name: 'blueCumulus75Hover', description: "Color(0xff333f56)", color: DsfrColors.blueCumulus75Hover),
      DsfrColor(
          name: 'greenTilleulVerveine75Active',
          description: "Color(0xff57533d)",
          color: DsfrColors.greenTilleulVerveine75Active),
      DsfrColor(
          name: 'greenEmeraude75Active', description: "Color(0xff3d5846)", color: DsfrColors.greenEmeraude75Active),
      DsfrColor(name: 'greenMenthe75Active', description: "Color(0xff3f5753)", color: DsfrColors.greenMenthe75Active),
      DsfrColor(
          name: 'greenArchipel75Active', description: "Color(0xff3f5759)", color: DsfrColors.greenArchipel75Active),
      DsfrColor(name: 'blueEcume75Active', description: "Color(0xff445179)", color: DsfrColors.blueEcume75Active),
      DsfrColor(
          name: 'purpleGlycine75Active', description: "Color(0xff634a60)", color: DsfrColors.purpleGlycine75Active),
      DsfrColor(name: 'pinkMacaron75Active', description: "Color(0xff654c48)", color: DsfrColors.pinkMacaron75Active),
      DsfrColor(name: 'pinkTuile75Active', description: "Color(0xff694c48)", color: DsfrColors.pinkTuile75Active),
      DsfrColor(
          name: 'yellowTournesol75Active', description: "Color(0xff5c5136)", color: DsfrColors.yellowTournesol75Active),
      DsfrColor(
          name: 'yellowMoutarde75Active', description: "Color(0xff5e513d)", color: DsfrColors.yellowMoutarde75Active),
      DsfrColor(
          name: 'orangeTerreBattue75Active',
          description: "Color(0xff6a4b42)",
          color: DsfrColors.orangeTerreBattue75Active),
      DsfrColor(
          name: 'brownCafeCreme75Active', description: "Color(0xff5a5141)", color: DsfrColors.brownCafeCreme75Active),
      DsfrColor(name: 'brownCaramel75Active', description: "Color(0xff624e41)", color: DsfrColors.brownCaramel75Active),
      DsfrColor(
          name: 'beigeGrisGalet75Active', description: "Color(0xff595148)", color: DsfrColors.beigeGrisGalet75Active),
      DsfrColor(name: 'brownOpera75Active', description: "Color(0xff604f44)", color: DsfrColors.brownOpera75Active),
      DsfrColor(
          name: 'greenBourgeon75Active', description: "Color(0xff46573d)", color: DsfrColors.greenBourgeon75Active),
      DsfrColor(name: 'blueCumulus75Active', description: "Color(0xff43536f)", color: DsfrColors.blueCumulus75Active),
      DsfrColor(name: 'greenEmeraude100', description: "Color(0xff19271e)", color: DsfrColors.greenEmeraude100),
      DsfrColor(name: 'greenMenthe100', description: "Color(0xff1a2624)", color: DsfrColors.greenMenthe100),
      DsfrColor(name: 'orangeTerreBattue100', description: "Color(0xff31201c)", color: DsfrColors.orangeTerreBattue100),
      DsfrColor(name: 'brownCafeCreme100', description: "Color(0xff28241c)", color: DsfrColors.brownCafeCreme100),
      DsfrColor(name: 'purpleGlycine100', description: "Color(0xff2c202b)", color: DsfrColors.purpleGlycine100),
      DsfrColor(name: 'pinkMacaron100', description: "Color(0xff2e211f)", color: DsfrColors.pinkMacaron100),
      DsfrColor(name: 'pinkTuile100', description: "Color(0xff2f211f)", color: DsfrColors.pinkTuile100),
      DsfrColor(name: 'yellowTournesol100', description: "Color(0xff292416)", color: DsfrColors.yellowTournesol100),
      DsfrColor(name: 'yellowMoutarde100', description: "Color(0xff2a2319)", color: DsfrColors.yellowMoutarde100),
      DsfrColor(name: 'brownCaramel100', description: "Color(0xff2c221c)", color: DsfrColors.brownCaramel100),
      DsfrColor(name: 'brownOpera100', description: "Color(0xff2b221c)", color: DsfrColors.brownOpera100),
      DsfrColor(name: 'beigeGrisGalet100', description: "Color(0xff28231f)", color: DsfrColors.beigeGrisGalet100),
      DsfrColor(name: 'greenArchipel100', description: "Color(0xff1a2628)", color: DsfrColors.greenArchipel100),
      DsfrColor(name: 'blueEcume100', description: "Color(0xff1d2437)", color: DsfrColors.blueEcume100),
      DsfrColor(name: 'blueCumulus100', description: "Color(0xff1c2433)", color: DsfrColors.blueCumulus100),
      DsfrColor(
          name: 'greenTilleulVerveine100', description: "Color(0xff272419)", color: DsfrColors.greenTilleulVerveine100),
      DsfrColor(name: 'greenBourgeon100', description: "Color(0xff1e2719)", color: DsfrColors.greenBourgeon100),
      DsfrColor(
          name: 'greenEmeraude100Active', description: "Color(0xff44624f)", color: DsfrColors.greenEmeraude100Active),
      DsfrColor(name: 'greenMenthe100Active', description: "Color(0xff46605b)", color: DsfrColors.greenMenthe100Active),
      DsfrColor(
          name: 'orangeTerreBattue100Active',
          description: "Color(0xff77534a)",
          color: DsfrColors.orangeTerreBattue100Active),
      DsfrColor(
          name: 'brownCafeCreme100Active', description: "Color(0xff635b4a)", color: DsfrColors.brownCafeCreme100Active),
      DsfrColor(
          name: 'purpleGlycine100Active', description: "Color(0xff6c536a)", color: DsfrColors.purpleGlycine100Active),
      DsfrColor(name: 'pinkMacaron100Active', description: "Color(0xff705551)", color: DsfrColors.pinkMacaron100Active),
      DsfrColor(name: 'pinkTuile100Active', description: "Color(0xff725550)", color: DsfrColors.pinkTuile100Active),
      DsfrColor(
          name: 'yellowTournesol100Active',
          description: "Color(0xff655b3d)",
          color: DsfrColors.yellowTournesol100Active),
      DsfrColor(
          name: 'yellowMoutarde100Active', description: "Color(0xff685944)", color: DsfrColors.yellowMoutarde100Active),
      DsfrColor(
          name: 'brownCaramel100Active', description: "Color(0xff6c574a)", color: DsfrColors.brownCaramel100Active),
      DsfrColor(name: 'brownOpera100Active', description: "Color(0xff6a574a)", color: DsfrColors.brownOpera100Active),
      DsfrColor(
          name: 'beigeGrisGalet100Active', description: "Color(0xff635950)", color: DsfrColors.beigeGrisGalet100Active),
      DsfrColor(
          name: 'greenArchipel100Active', description: "Color(0xff465f63)", color: DsfrColors.greenArchipel100Active),
      DsfrColor(name: 'blueEcume100Active', description: "Color(0xff4c5b83)", color: DsfrColors.blueEcume100Active),
      DsfrColor(name: 'blueCumulus100Active', description: "Color(0xff4a5b7b)", color: DsfrColors.blueCumulus100Active),
      DsfrColor(
          name: 'greenTilleulVerveine100Active',
          description: "Color(0xff615b44)",
          color: DsfrColors.greenTilleulVerveine100Active),
      DsfrColor(
          name: 'greenBourgeon100Active', description: "Color(0xff4e6144)", color: DsfrColors.greenBourgeon100Active),
      DsfrColor(
          name: 'greenTilleulVerveine100Hover',
          description: "Color(0xff4c4734)",
          color: DsfrColors.greenTilleulVerveine100Hover),
      DsfrColor(
          name: 'greenBourgeon100Hover', description: "Color(0xff3d4c34)", color: DsfrColors.greenBourgeon100Hover),
      DsfrColor(
          name: 'greenEmeraude100Hover', description: "Color(0xff344c3d)", color: DsfrColors.greenEmeraude100Hover),
      DsfrColor(name: 'greenMenthe100Hover', description: "Color(0xff364b47)", color: DsfrColors.greenMenthe100Hover),
      DsfrColor(
          name: 'orangeTerreBattue100Hover',
          description: "Color(0xff5d403a)",
          color: DsfrColors.orangeTerreBattue100Hover),
      DsfrColor(
          name: 'brownCafeCreme100Hover', description: "Color(0xff4e4739)", color: DsfrColors.brownCafeCreme100Hover),
      DsfrColor(
          name: 'purpleGlycine100Hover', description: "Color(0xff554053)", color: DsfrColors.purpleGlycine100Hover),
      DsfrColor(name: 'pinkMacaron100Hover', description: "Color(0xff58423f)", color: DsfrColors.pinkMacaron100Hover),
      DsfrColor(name: 'pinkTuile100Hover', description: "Color(0xff5a423e)", color: DsfrColors.pinkTuile100Hover),
      DsfrColor(
          name: 'yellowTournesol100Hover', description: "Color(0xff4f472f)", color: DsfrColors.yellowTournesol100Hover),
      DsfrColor(
          name: 'yellowMoutarde100Hover', description: "Color(0xff514534)", color: DsfrColors.yellowMoutarde100Hover),
      DsfrColor(name: 'brownCaramel100Hover', description: "Color(0xff554439)", color: DsfrColors.brownCaramel100Hover),
      DsfrColor(name: 'brownOpera100Hover', description: "Color(0xff53443a)", color: DsfrColors.brownOpera100Hover),
      DsfrColor(
          name: 'beigeGrisGalet100Hover', description: "Color(0xff4e453f)", color: DsfrColors.beigeGrisGalet100Hover),
      DsfrColor(
          name: 'greenArchipel100Hover', description: "Color(0xff364a4e)", color: DsfrColors.greenArchipel100Hover),
      DsfrColor(name: 'blueEcume100Hover', description: "Color(0xff3b4767)", color: DsfrColors.blueEcume100Hover),
      DsfrColor(name: 'blueCumulus100Hover', description: "Color(0xff3a4761)", color: DsfrColors.blueCumulus100Hover),
      DsfrColor(name: 'greenEmeraude125', description: "Color(0xff1e2e23)", color: DsfrColors.greenEmeraude125),
      DsfrColor(name: 'greenMenthe125', description: "Color(0xff1f2d2a)", color: DsfrColors.greenMenthe125),
      DsfrColor(name: 'greenArchipel125', description: "Color(0xff1f2c2e)", color: DsfrColors.greenArchipel125),
      DsfrColor(name: 'blueEcume125', description: "Color(0xff222940)", color: DsfrColors.blueEcume125),
      DsfrColor(name: 'blueCumulus125', description: "Color(0xff212a3a)", color: DsfrColors.blueCumulus125),
      DsfrColor(name: 'purpleGlycine125', description: "Color(0xff332632)", color: DsfrColors.purpleGlycine125),
      DsfrColor(name: 'pinkMacaron125', description: "Color(0xff352724)", color: DsfrColors.pinkMacaron125),
      DsfrColor(name: 'pinkTuile125', description: "Color(0xff372624)", color: DsfrColors.pinkTuile125),
      DsfrColor(name: 'yellowTournesol125', description: "Color(0xff302a1a)", color: DsfrColors.yellowTournesol125),
      DsfrColor(name: 'brownCafeCreme125', description: "Color(0xff2e2a21)", color: DsfrColors.brownCafeCreme125),
      DsfrColor(name: 'brownCaramel125', description: "Color(0xff332821)", color: DsfrColors.brownCaramel125),
      DsfrColor(name: 'brownOpera125', description: "Color(0xff322821)", color: DsfrColors.brownOpera125),
      DsfrColor(name: 'beigeGrisGalet125', description: "Color(0xff2e2924)", color: DsfrColors.beigeGrisGalet125),
      DsfrColor(name: 'yellowMoutarde125', description: "Color(0xff30291d)", color: DsfrColors.yellowMoutarde125),
      DsfrColor(
          name: 'greenTilleulVerveine125', description: "Color(0xff2d2a1d)", color: DsfrColors.greenTilleulVerveine125),
      DsfrColor(name: 'greenBourgeon125', description: "Color(0xff232d1d)", color: DsfrColors.greenBourgeon125),
      DsfrColor(name: 'orangeTerreBattue125', description: "Color(0xff382621)", color: DsfrColors.orangeTerreBattue125),
      DsfrColor(
          name: 'greenTilleulVerveine125Hover',
          description: "Color(0xff534f39)",
          color: DsfrColors.greenTilleulVerveine125Hover),
      DsfrColor(
          name: 'greenBourgeon125Hover', description: "Color(0xff435339)", color: DsfrColors.greenBourgeon125Hover),
      DsfrColor(name: 'greenMenthe125Hover', description: "Color(0xff3c534e)", color: DsfrColors.greenMenthe125Hover),
      DsfrColor(
          name: 'greenEmeraude125Hover', description: "Color(0xff3b5543)", color: DsfrColors.greenEmeraude125Hover),
      DsfrColor(
          name: 'greenArchipel125Hover', description: "Color(0xff3c5255)", color: DsfrColors.greenArchipel125Hover),
      DsfrColor(name: 'blueEcume125Hover', description: "Color(0xff424d73)", color: DsfrColors.blueEcume125Hover),
      DsfrColor(name: 'blueCumulus125Hover', description: "Color(0xff404f69)", color: DsfrColors.blueCumulus125Hover),
      DsfrColor(
          name: 'purpleGlycine125Hover', description: "Color(0xff5d485c)", color: DsfrColors.purpleGlycine125Hover),
      DsfrColor(name: 'pinkMacaron125Hover', description: "Color(0xff614a45)", color: DsfrColors.pinkMacaron125Hover),
      DsfrColor(name: 'pinkTuile125Hover', description: "Color(0xff644845)", color: DsfrColors.pinkTuile125Hover),
      DsfrColor(
          name: 'yellowTournesol125Hover', description: "Color(0xff584e34)", color: DsfrColors.yellowTournesol125Hover),
      DsfrColor(
          name: 'yellowMoutarde125Hover', description: "Color(0xff584d39)", color: DsfrColors.yellowMoutarde125Hover),
      DsfrColor(
          name: 'orangeTerreBattue125Hover',
          description: "Color(0xff664840)",
          color: DsfrColors.orangeTerreBattue125Hover),
      DsfrColor(
          name: 'brownCafeCreme125Hover', description: "Color(0xff554e3f)", color: DsfrColors.brownCafeCreme125Hover),
      DsfrColor(name: 'brownCaramel125Hover', description: "Color(0xff5d4b40)", color: DsfrColors.brownCaramel125Hover),
      DsfrColor(name: 'brownOpera125Hover', description: "Color(0xff5c4b40)", color: DsfrColors.brownOpera125Hover),
      DsfrColor(
          name: 'beigeGrisGalet125Hover', description: "Color(0xff554d45)", color: DsfrColors.beigeGrisGalet125Hover),
      DsfrColor(name: 'greenMenthe125Active', description: "Color(0xff4d6963)", color: DsfrColors.greenMenthe125Active),
      DsfrColor(
          name: 'greenArchipel125Active', description: "Color(0xff4d676b)", color: DsfrColors.greenArchipel125Active),
      DsfrColor(name: 'blueEcume125Active', description: "Color(0xff536190)", color: DsfrColors.blueEcume125Active),
      DsfrColor(name: 'blueCumulus125Active', description: "Color(0xff516384)", color: DsfrColors.blueCumulus125Active),
      DsfrColor(
          name: 'purpleGlycine125Active', description: "Color(0xff755b73)", color: DsfrColors.purpleGlycine125Active),
      DsfrColor(name: 'pinkMacaron125Active', description: "Color(0xff795d57)", color: DsfrColors.pinkMacaron125Active),
      DsfrColor(name: 'pinkTuile125Active', description: "Color(0xff7d5b57)", color: DsfrColors.pinkTuile125Active),
      DsfrColor(
          name: 'yellowTournesol125Active',
          description: "Color(0xff6f6342)",
          color: DsfrColors.yellowTournesol125Active),
      DsfrColor(
          name: 'yellowMoutarde125Active', description: "Color(0xff6f6149)", color: DsfrColors.yellowMoutarde125Active),
      DsfrColor(
          name: 'orangeTerreBattue125Active',
          description: "Color(0xff7f5b51)",
          color: DsfrColors.orangeTerreBattue125Active),
      DsfrColor(
          name: 'brownCafeCreme125Active', description: "Color(0xff6b6351)", color: DsfrColors.brownCafeCreme125Active),
      DsfrColor(
          name: 'brownCaramel125Active', description: "Color(0xff755f51)", color: DsfrColors.brownCaramel125Active),
      DsfrColor(name: 'brownOpera125Active', description: "Color(0xff735f51)", color: DsfrColors.brownOpera125Active),
      DsfrColor(
          name: 'beigeGrisGalet125Active', description: "Color(0xff6b6157)", color: DsfrColors.beigeGrisGalet125Active),
      DsfrColor(
          name: 'greenEmeraude125Active', description: "Color(0xff4b6b55)", color: DsfrColors.greenEmeraude125Active),
      DsfrColor(
          name: 'greenTilleulVerveine125Active',
          description: "Color(0xff696349)",
          color: DsfrColors.greenTilleulVerveine125Active),
      DsfrColor(
          name: 'greenBourgeon125Active', description: "Color(0xff556949)", color: DsfrColors.greenBourgeon125Active),
      DsfrColor(
          name: 'greenTilleulVerveine200', description: "Color(0xff3f3a20)", color: DsfrColors.greenTilleulVerveine200),
      DsfrColor(name: 'greenBourgeon200', description: "Color(0xff2a401a)", color: DsfrColors.greenBourgeon200),
      DsfrColor(name: 'greenEmeraude200', description: "Color(0xff21402c)", color: DsfrColors.greenEmeraude200),
      DsfrColor(name: 'greenMenthe200', description: "Color(0xff223f3a)", color: DsfrColors.greenMenthe200),
      DsfrColor(name: 'blueCumulus200', description: "Color(0xff263b58)", color: DsfrColors.blueCumulus200),
      DsfrColor(name: 'yellowMoutarde200', description: "Color(0xff453820)", color: DsfrColors.yellowMoutarde200),
      DsfrColor(name: 'orangeTerreBattue200', description: "Color(0xff543125)", color: DsfrColors.orangeTerreBattue200),
      DsfrColor(name: 'greenArchipel200', description: "Color(0xff233e41)", color: DsfrColors.greenArchipel200),
      DsfrColor(name: 'blueEcume200', description: "Color(0xff273962)", color: DsfrColors.blueEcume200),
      DsfrColor(name: 'purpleGlycine200', description: "Color(0xff502e4d)", color: DsfrColors.purpleGlycine200),
      DsfrColor(name: 'pinkMacaron200', description: "Color(0xff52312a)", color: DsfrColors.pinkMacaron200),
      DsfrColor(name: 'pinkTuile200', description: "Color(0xff55302a)", color: DsfrColors.pinkTuile200),
      DsfrColor(name: 'yellowTournesol200', description: "Color(0xff43391a)", color: DsfrColors.yellowTournesol200),
      DsfrColor(name: 'brownCaramel200', description: "Color(0xff4b3525)", color: DsfrColors.brownCaramel200),
      DsfrColor(name: 'brownOpera200', description: "Color(0xff493625)", color: DsfrColors.brownOpera200),
      DsfrColor(name: 'beigeGrisGalet200', description: "Color(0xff433829)", color: DsfrColors.beigeGrisGalet200),
      DsfrColor(name: 'brownCafeCreme200', description: "Color(0xff423925)", color: DsfrColors.brownCafeCreme200),
      DsfrColor(
          name: 'greenTilleulVerveine200Hover',
          description: "Color(0xff6a6239)",
          color: DsfrColors.greenTilleulVerveine200Hover),
      DsfrColor(
          name: 'greenBourgeon200Hover', description: "Color(0xff496b30)", color: DsfrColors.greenBourgeon200Hover),
      DsfrColor(
          name: 'greenEmeraude200Hover', description: "Color(0xff3b6c4c)", color: DsfrColors.greenEmeraude200Hover),
      DsfrColor(name: 'greenMenthe200Hover', description: "Color(0xff3d6a62)", color: DsfrColors.greenMenthe200Hover),
      DsfrColor(name: 'blueCumulus200Hover', description: "Color(0xff436491)", color: DsfrColors.blueCumulus200Hover),
      DsfrColor(
          name: 'yellowMoutarde200Hover', description: "Color(0xff735f39)", color: DsfrColors.yellowMoutarde200Hover),
      DsfrColor(
          name: 'orangeTerreBattue200Hover',
          description: "Color(0xff8b5442)",
          color: DsfrColors.orangeTerreBattue200Hover),
      DsfrColor(
          name: 'greenArchipel200Hover', description: "Color(0xff3e686d)", color: DsfrColors.greenArchipel200Hover),
      DsfrColor(name: 'blueEcume200Hover', description: "Color(0xff4561a1)", color: DsfrColors.blueEcume200Hover),
      DsfrColor(
          name: 'purpleGlycine200Hover', description: "Color(0xff855080)", color: DsfrColors.purpleGlycine200Hover),
      DsfrColor(name: 'pinkMacaron200Hover', description: "Color(0xff885449)", color: DsfrColors.pinkMacaron200Hover),
      DsfrColor(name: 'pinkTuile200Hover', description: "Color(0xff8d5349)", color: DsfrColors.pinkTuile200Hover),
      DsfrColor(
          name: 'yellowTournesol200Hover', description: "Color(0xff706030)", color: DsfrColors.yellowTournesol200Hover),
      DsfrColor(name: 'brownCaramel200Hover', description: "Color(0xff7c5a41)", color: DsfrColors.brownCaramel200Hover),
      DsfrColor(name: 'brownOpera200Hover', description: "Color(0xff795c41)", color: DsfrColors.brownOpera200Hover),
      DsfrColor(
          name: 'beigeGrisGalet200Hover', description: "Color(0xff705f47)", color: DsfrColors.beigeGrisGalet200Hover),
      DsfrColor(
          name: 'brownCafeCreme200Hover', description: "Color(0xff6e6041)", color: DsfrColors.brownCafeCreme200Hover),
      DsfrColor(
          name: 'greenTilleulVerveine200Active',
          description: "Color(0xff807747)",
          color: DsfrColors.greenTilleulVerveine200Active),
      DsfrColor(
          name: 'greenBourgeon200Active', description: "Color(0xff5a833c)", color: DsfrColors.greenBourgeon200Active),
      DsfrColor(
          name: 'greenEmeraude200Active', description: "Color(0xff49835e)", color: DsfrColors.greenEmeraude200Active),
      DsfrColor(name: 'greenMenthe200Active', description: "Color(0xff4b8178)", color: DsfrColors.greenMenthe200Active),
      DsfrColor(name: 'blueCumulus200Active', description: "Color(0xff5279af)", color: DsfrColors.blueCumulus200Active),
      DsfrColor(
          name: 'yellowMoutarde200Active', description: "Color(0xff8c7447)", color: DsfrColors.yellowMoutarde200Active),
      DsfrColor(
          name: 'orangeTerreBattue200Active',
          description: "Color(0xffa96751)",
          color: DsfrColors.orangeTerreBattue200Active),
      DsfrColor(
          name: 'greenArchipel200Active', description: "Color(0xff4d7f85)", color: DsfrColors.greenArchipel200Active),
      DsfrColor(name: 'blueEcume200Active', description: "Color(0xff5576c2)", color: DsfrColors.blueEcume200Active),
      DsfrColor(
          name: 'purpleGlycine200Active', description: "Color(0xffa1629c)", color: DsfrColors.purpleGlycine200Active),
      DsfrColor(name: 'pinkMacaron200Active', description: "Color(0xffa5675a)", color: DsfrColors.pinkMacaron200Active),
      DsfrColor(name: 'pinkTuile200Active', description: "Color(0xffab665a)", color: DsfrColors.pinkTuile200Active),
      DsfrColor(
          name: 'yellowTournesol200Active',
          description: "Color(0xff88753c)",
          color: DsfrColors.yellowTournesol200Active),
      DsfrColor(
          name: 'brownCaramel200Active', description: "Color(0xff976e51)", color: DsfrColors.brownCaramel200Active),
      DsfrColor(name: 'brownOpera200Active', description: "Color(0xff937050)", color: DsfrColors.brownOpera200Active),
      DsfrColor(
          name: 'beigeGrisGalet200Active', description: "Color(0xff887358)", color: DsfrColors.beigeGrisGalet200Active),
      DsfrColor(
          name: 'brownCafeCreme200Active', description: "Color(0xff867550)", color: DsfrColors.brownCafeCreme200Active),
      DsfrColor(
          name: 'greenTilleulVerveineMoon817',
          description: "Color(0xffd8c634)",
          color: DsfrColors.greenTilleulVerveineMoon817),
      DsfrColor(name: 'greenBourgeonMoon759', description: "Color(0xff99c221)", color: DsfrColors.greenBourgeonMoon759),
      DsfrColor(name: 'greenEmeraudeMoon753', description: "Color(0xff34cb6a)", color: DsfrColors.greenEmeraudeMoon753),
      DsfrColor(name: 'greenMentheMoon652', description: "Color(0xff21ab8e)", color: DsfrColors.greenMentheMoon652),
      DsfrColor(name: 'greenArchipelMoon716', description: "Color(0xff34bab5)", color: DsfrColors.greenArchipelMoon716),
      DsfrColor(name: 'blueEcumeMoon675', description: "Color(0xff869ece)", color: DsfrColors.blueEcumeMoon675),
      DsfrColor(name: 'purpleGlycineMoon630', description: "Color(0xffce70cc)", color: DsfrColors.purpleGlycineMoon630),
      DsfrColor(name: 'pinkMacaronMoon833', description: "Color(0xffffb7ae)", color: DsfrColors.pinkMacaronMoon833),
      DsfrColor(name: 'pinkTuileMoon750', description: "Color(0xffff9575)", color: DsfrColors.pinkTuileMoon750),
      DsfrColor(
          name: 'yellowTournesolMoon922', description: "Color(0xffffe552)", color: DsfrColors.yellowTournesolMoon922),
      DsfrColor(
          name: 'yellowMoutardeMoon860', description: "Color(0xffffca00)", color: DsfrColors.yellowMoutardeMoon860),
      DsfrColor(
          name: 'orangeTerreBattueMoon672',
          description: "Color(0xffff732c)",
          color: DsfrColors.orangeTerreBattueMoon672),
      DsfrColor(name: 'brownOperaMoon820', description: "Color(0xffe6be92)", color: DsfrColors.brownOperaMoon820),
      DsfrColor(
          name: 'beigeGrisGaletMoon821', description: "Color(0xffd0c3b7)", color: DsfrColors.beigeGrisGaletMoon821),
      DsfrColor(name: 'brownCaramelMoon901', description: "Color(0xfffbd8ab)", color: DsfrColors.brownCaramelMoon901),
      DsfrColor(
          name: 'brownCafeCremeMoon885', description: "Color(0xffecd7a2)", color: DsfrColors.brownCafeCremeMoon885),
      DsfrColor(name: 'blueCumulusMoon732', description: "Color(0xff7ab1e8)", color: DsfrColors.blueCumulusMoon732),
      DsfrColor(
          name: 'purpleGlycineMoon630Hover',
          description: "Color(0xffdfa4dd)",
          color: DsfrColors.purpleGlycineMoon630Hover),
      DsfrColor(
          name: 'pinkMacaronMoon833Hover', description: "Color(0xffffe0dc)", color: DsfrColors.pinkMacaronMoon833Hover),
      DsfrColor(
          name: 'pinkTuileMoon750Hover', description: "Color(0xffffc4b7)", color: DsfrColors.pinkTuileMoon750Hover),
      DsfrColor(
          name: 'yellowTournesolMoon922Hover',
          description: "Color(0xffe1c700)",
          color: DsfrColors.yellowTournesolMoon922Hover),
      DsfrColor(
          name: 'yellowMoutardeMoon860Hover',
          description: "Color(0xffcda200)",
          color: DsfrColors.yellowMoutardeMoon860Hover),
      DsfrColor(
          name: 'orangeTerreBattueMoon672Hover',
          description: "Color(0xffffa48b)",
          color: DsfrColors.orangeTerreBattueMoon672Hover),
      DsfrColor(
          name: 'brownOperaMoon820Hover', description: "Color(0xfff2e2d3)", color: DsfrColors.brownOperaMoon820Hover),
      DsfrColor(
          name: 'beigeGrisGaletMoon821Hover',
          description: "Color(0xffeae5e1)",
          color: DsfrColors.beigeGrisGaletMoon821Hover),
      DsfrColor(
          name: 'brownCaramelMoon901Hover',
          description: "Color(0xffefb547)",
          color: DsfrColors.brownCaramelMoon901Hover),
      DsfrColor(
          name: 'brownCafeCremeMoon885Hover',
          description: "Color(0xffc5b386)",
          color: DsfrColors.brownCafeCremeMoon885Hover),
      DsfrColor(
          name: 'greenTilleulVerveineMoon817Hover',
          description: "Color(0xfffee943)",
          color: DsfrColors.greenTilleulVerveineMoon817Hover),
      DsfrColor(
          name: 'greenBourgeonMoon759Hover',
          description: "Color(0xffbaec2a)",
          color: DsfrColors.greenBourgeonMoon759Hover),
      DsfrColor(
          name: 'greenEmeraudeMoon753Hover',
          description: "Color(0xff42fb84)",
          color: DsfrColors.greenEmeraudeMoon753Hover),
      DsfrColor(
          name: 'greenMentheMoon652Hover', description: "Color(0xff2eddb8)", color: DsfrColors.greenMentheMoon652Hover),
      DsfrColor(
          name: 'greenArchipelMoon716Hover',
          description: "Color(0xff43e9e2)",
          color: DsfrColors.greenArchipelMoon716Hover),
      DsfrColor(
          name: 'blueEcumeMoon675Hover', description: "Color(0xffb8c5e2)", color: DsfrColors.blueEcumeMoon675Hover),
      DsfrColor(
          name: 'blueCumulusMoon732Hover', description: "Color(0xffbad2f2)", color: DsfrColors.blueCumulusMoon732Hover),
      DsfrColor(
          name: 'greenTilleulVerveineMoon817Active',
          description: "Color(0xfffef1ab)",
          color: DsfrColors.greenTilleulVerveineMoon817Active),
      DsfrColor(
          name: 'greenBourgeonMoon759Active',
          description: "Color(0xffc9fd2e)",
          color: DsfrColors.greenBourgeonMoon759Active),
      DsfrColor(
          name: 'greenEmeraudeMoon753Active',
          description: "Color(0xff80fda3)",
          color: DsfrColors.greenEmeraudeMoon753Active),
      DsfrColor(
          name: 'greenMentheMoon652Active',
          description: "Color(0xff34f4cc)",
          color: DsfrColors.greenMentheMoon652Active),
      DsfrColor(
          name: 'greenArchipelMoon716Active',
          description: "Color(0xff4cfdf6)",
          color: DsfrColors.greenArchipelMoon716Active),
      DsfrColor(
          name: 'blueEcumeMoon675Active', description: "Color(0xffced6ea)", color: DsfrColors.blueEcumeMoon675Active),
      DsfrColor(
          name: 'blueCumulusMoon732Active',
          description: "Color(0xffd2e2f6)",
          color: DsfrColors.blueCumulusMoon732Active),
      DsfrColor(
          name: 'purpleGlycineMoon630Active',
          description: "Color(0xffe7bbe6)",
          color: DsfrColors.purpleGlycineMoon630Active),
      DsfrColor(
          name: 'pinkMacaronMoon833Active',
          description: "Color(0xfffff0ee)",
          color: DsfrColors.pinkMacaronMoon833Active),
      DsfrColor(
          name: 'pinkTuileMoon750Active', description: "Color(0xffffd8d0)", color: DsfrColors.pinkTuileMoon750Active),
      DsfrColor(
          name: 'yellowTournesolMoon922Active',
          description: "Color(0xffcab300)",
          color: DsfrColors.yellowTournesolMoon922Active),
      DsfrColor(
          name: 'yellowMoutardeMoon860Active',
          description: "Color(0xffb28c00)",
          color: DsfrColors.yellowMoutardeMoon860Active),
      DsfrColor(
          name: 'orangeTerreBattueMoon672Active',
          description: "Color(0xffffbbab)",
          color: DsfrColors.orangeTerreBattueMoon672Active),
      DsfrColor(
          name: 'brownOperaMoon820Active', description: "Color(0xfff8f0e9)", color: DsfrColors.brownOperaMoon820Active),
      DsfrColor(
          name: 'beigeGrisGaletMoon821Active',
          description: "Color(0xfff4f2f0)",
          color: DsfrColors.beigeGrisGaletMoon821Active),
      DsfrColor(
          name: 'brownCaramelMoon901Active',
          description: "Color(0xffd6a23e)",
          color: DsfrColors.brownCaramelMoon901Active),
      DsfrColor(
          name: 'brownCafeCremeMoon885Active',
          description: "Color(0xffaf9f77)",
          color: DsfrColors.brownCafeCremeMoon885Active),
      DsfrColor(name: 'blueFrance625', description: "Color(0xff8585f6)", color: DsfrColors.blueFrance625),
      DsfrColor(name: 'redMarianne625', description: "Color(0xfff95c5e)", color: DsfrColors.redMarianne625),
      DsfrColor(name: 'blueFrance625Hover', description: "Color(0xffb1b1f9)", color: DsfrColors.blueFrance625Hover),
      DsfrColor(name: 'redMarianne625Hover', description: "Color(0xfffa9293)", color: DsfrColors.redMarianne625Hover),
      DsfrColor(name: 'blueFrance625Active', description: "Color(0xffc6c6fb)", color: DsfrColors.blueFrance625Active),
      DsfrColor(name: 'redMarianne625Active', description: "Color(0xfffbabac)", color: DsfrColors.redMarianne625Active),
      DsfrColor(name: 'blueFrance100', description: "Color(0xff21213f)", color: DsfrColors.blueFrance100),
      DsfrColor(name: 'redMarianne100', description: "Color(0xff331f1f)", color: DsfrColors.redMarianne100),
      DsfrColor(name: 'blueFrance100Hover', description: "Color(0xff424275)", color: DsfrColors.blueFrance100Hover),
      DsfrColor(name: 'redMarianne100Hover', description: "Color(0xff613f3f)", color: DsfrColors.redMarianne100Hover),
      DsfrColor(name: 'blueFrance100Active', description: "Color(0xff56568c)", color: DsfrColors.blueFrance100Active),
      DsfrColor(name: 'redMarianne100Active', description: "Color(0xff7b5151)", color: DsfrColors.redMarianne100Active),
      DsfrColor(name: 'blueFrance125', description: "Color(0xff272747)", color: DsfrColors.blueFrance125),
      DsfrColor(name: 'redMarianne125', description: "Color(0xff3b2424)", color: DsfrColors.redMarianne125),
      DsfrColor(name: 'blueFrance125Hover', description: "Color(0xff4a4a7d)", color: DsfrColors.blueFrance125Hover),
      DsfrColor(name: 'redMarianne125Hover', description: "Color(0xff6b4545)", color: DsfrColors.redMarianne125Hover),
      DsfrColor(name: 'blueFrance125Active', description: "Color(0xff5e5e90)", color: DsfrColors.blueFrance125Active),
      DsfrColor(name: 'redMarianne125Active', description: "Color(0xff865757)", color: DsfrColors.redMarianne125Active),
      DsfrColor(name: 'blueFrance200', description: "Color(0xff313178)", color: DsfrColors.blueFrance200),
      DsfrColor(name: 'redMarianne200', description: "Color(0xff5e2a2b)", color: DsfrColors.redMarianne200),
      DsfrColor(name: 'blueFrance200Hover', description: "Color(0xff5757ad)", color: DsfrColors.blueFrance200Hover),
      DsfrColor(name: 'redMarianne200Hover', description: "Color(0xff9c4a4c)", color: DsfrColors.redMarianne200Hover),
      DsfrColor(name: 'blueFrance200Active', description: "Color(0xff6c6cbb)", color: DsfrColors.blueFrance200Active),
      DsfrColor(name: 'redMarianne200Active', description: "Color(0xffbe5c5e)", color: DsfrColors.redMarianne200Active),
      DsfrColor(name: 'blueFrance75', description: "Color(0xff1b1b35)", color: DsfrColors.blueFrance75),
      DsfrColor(name: 'redMarianne75', description: "Color(0xff2b1919)", color: DsfrColors.redMarianne75),
      DsfrColor(name: 'blueFrance75Hover', description: "Color(0xff3a3a68)", color: DsfrColors.blueFrance75Hover),
      DsfrColor(name: 'redMarianne75Hover', description: "Color(0xff573737)", color: DsfrColors.redMarianne75Hover),
      DsfrColor(name: 'blueFrance75Active', description: "Color(0xff4d4d83)", color: DsfrColors.blueFrance75Active),
      DsfrColor(name: 'redMarianne75Active', description: "Color(0xff704848)", color: DsfrColors.redMarianne75Active),
      DsfrColor(name: 'blueFrance113', description: "Color(0xff000091)", color: DsfrColors.blueFrance113),
      DsfrColor(name: 'blueFrance113Hover', description: "Color(0xff1212ff)", color: DsfrColors.blueFrance113Hover),
      DsfrColor(name: 'blueFrance113Active', description: "Color(0xff2323ff)", color: DsfrColors.blueFrance113Active),
      DsfrColor(name: 'success75', description: "Color(0xff132016)", color: DsfrColors.success75),
      DsfrColor(name: 'warning75', description: "Color(0xff2e1915)", color: DsfrColors.warning75),
      DsfrColor(name: 'error75', description: "Color(0xff301717)", color: DsfrColors.error75),
      DsfrColor(name: 'info75', description: "Color(0xff181e2f)", color: DsfrColors.info75),
      DsfrColor(name: 'success100', description: "Color(0xff19271d)", color: DsfrColors.success100),
      DsfrColor(name: 'warning100', description: "Color(0xff361e19)", color: DsfrColors.warning100),
      DsfrColor(name: 'error100', description: "Color(0xff391c1c)", color: DsfrColors.error100),
      DsfrColor(name: 'info100', description: "Color(0xff1d2437)", color: DsfrColors.info100),
      DsfrColor(name: 'success100Hover', description: "Color(0xff344c3b)", color: DsfrColors.success100Hover),
      DsfrColor(name: 'warning100Hover', description: "Color(0xff663d35)", color: DsfrColors.warning100Hover),
      DsfrColor(name: 'error100Hover', description: "Color(0xff6c3a3a)", color: DsfrColors.error100Hover),
      DsfrColor(name: 'info100Hover', description: "Color(0xff3b4767)", color: DsfrColors.info100Hover),
      DsfrColor(name: 'success100Active', description: "Color(0xff44624d)", color: DsfrColors.success100Active),
      DsfrColor(name: 'warning100Active', description: "Color(0xff824f44)", color: DsfrColors.warning100Active),
      DsfrColor(name: 'error100Active', description: "Color(0xff894b4b)", color: DsfrColors.error100Active),
      DsfrColor(name: 'info100Active', description: "Color(0xff4c5b83)", color: DsfrColors.info100Active),
      DsfrColor(name: 'success125', description: "Color(0xff1e2e22)", color: DsfrColors.success125),
      DsfrColor(name: 'warning125', description: "Color(0xff3e231e)", color: DsfrColors.warning125),
      DsfrColor(name: 'error125', description: "Color(0xff402020)", color: DsfrColors.error125),
      DsfrColor(name: 'info125', description: "Color(0xff222a3f)", color: DsfrColors.info125),
      DsfrColor(name: 'success200', description: "Color(0xff204129)", color: DsfrColors.success200),
      DsfrColor(name: 'warning200', description: "Color(0xff5f2d21)", color: DsfrColors.warning200),
      DsfrColor(name: 'error200', description: "Color(0xff642626)", color: DsfrColors.error200),
      DsfrColor(name: 'info200', description: "Color(0xff273a62)", color: DsfrColors.info200),
      DsfrColor(name: 'success625', description: "Color(0xff27a658)", color: DsfrColors.success625),
      DsfrColor(name: 'warning625', description: "Color(0xfffc5d00)", color: DsfrColors.warning625),
      DsfrColor(name: 'error625', description: "Color(0xffff5655)", color: DsfrColors.error625),
      DsfrColor(name: 'info625', description: "Color(0xff518fff)", color: DsfrColors.info625),
      DsfrColor(name: 'success625Hover', description: "Color(0xff36d975)", color: DsfrColors.success625Hover),
      DsfrColor(name: 'warning625Hover', description: "Color(0xffff8c73)", color: DsfrColors.warning625Hover),
      DsfrColor(name: 'error625Hover', description: "Color(0xffff8c8c)", color: DsfrColors.error625Hover),
      DsfrColor(name: 'info625Hover', description: "Color(0xff98b4ff)", color: DsfrColors.info625Hover),
      DsfrColor(name: 'success625Active', description: "Color(0xff3df183)", color: DsfrColors.success625Active),
      DsfrColor(name: 'warning625Active', description: "Color(0xffffa595)", color: DsfrColors.warning625Active),
      DsfrColor(name: 'error625Active', description: "Color(0xffffa6a6)", color: DsfrColors.error625Active),
      DsfrColor(name: 'info625Active', description: "Color(0xffb4c7ff)", color: DsfrColors.info625Active),
      DsfrColor(
          name: 'createdForMissingDecisionLightbackgroundOverlayGrey',
          description: "Color(0xa3161616)",
          color: DsfrColors.createdForMissingDecisionLightbackgroundOverlayGrey),
    ];
  }

  static List<DsfrColor> allDecisions(BuildContext context) {
    return [
      DsfrColor(
          name: 'artworkMajorBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.artworkMajorBlueFrance(context)),
      DsfrColor(
          name: 'artworkMinorBlueFrance',
          description: "blueFranceMain525 / blueFranceMain525",
          color: DsfrColorDecisions.artworkMinorBlueFrance(context)),
      DsfrColor(
          name: 'artworkMinorRedMarianne',
          description: "redMarianneMain472 / redMarianneMain472",
          color: DsfrColorDecisions.artworkMinorRedMarianne(context)),
      DsfrColor(
          name: 'artworkDecorativeBlueFrance',
          description: "blueFrance950 / blueFrance100",
          color: DsfrColorDecisions.artworkDecorativeBlueFrance(context)),
      DsfrColor(
          name: 'backgroundDefaultGrey',
          description: "grey1000 / grey50",
          color: DsfrColorDecisions.backgroundDefaultGrey(context)),
      DsfrColor(
          name: 'backgroundDefaultGreyHover',
          description: "grey1000Hover / grey50Hover",
          color: DsfrColorDecisions.backgroundDefaultGreyHover(context)),
      DsfrColor(
          name: 'backgroundDefaultGreyActive',
          description: "grey1000Active / grey50Active",
          color: DsfrColorDecisions.backgroundDefaultGreyActive(context)),
      DsfrColor(
          name: 'backgroundAltGrey',
          description: "grey975 / grey75",
          color: DsfrColorDecisions.backgroundAltGrey(context)),
      DsfrColor(
          name: 'backgroundAltGreyHover',
          description: "grey975Hover / grey75Hover",
          color: DsfrColorDecisions.backgroundAltGreyHover(context)),
      DsfrColor(
          name: 'backgroundAltGreyActive',
          description: "grey975Active / grey75Active",
          color: DsfrColorDecisions.backgroundAltGreyActive(context)),
      DsfrColor(
          name: 'backgroundAltBlueFrance',
          description: "blueFrance975 / blueFrance75",
          color: DsfrColorDecisions.backgroundAltBlueFrance(context)),
      DsfrColor(
          name: 'backgroundContrastGrey',
          description: "grey950 / grey100",
          color: DsfrColorDecisions.backgroundContrastGrey(context)),
      DsfrColor(
          name: 'backgroundContrastSuccess',
          description: "success950 / success100",
          color: DsfrColorDecisions.backgroundContrastSuccess(context)),
      DsfrColor(
          name: 'backgroundContrastError',
          description: "error950 / error100",
          color: DsfrColorDecisions.backgroundContrastError(context)),
      DsfrColor(
          name: 'backgroundContrastWarning',
          description: "warning950 / warning100",
          color: DsfrColorDecisions.backgroundContrastWarning(context)),
      DsfrColor(
          name: 'backgroundContrastInfo',
          description: "info950 / blueEcume100",
          color: DsfrColorDecisions.backgroundContrastInfo(context)),
      DsfrColor(
          name: 'backgroundActionHighBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.backgroundActionHighBlueFrance(context)),
      DsfrColor(
          name: 'backgroundActionHighBlueFranceHover',
          description: "blueFranceSun113Hover / blueFrance625Hover",
          color: DsfrColorDecisions.backgroundActionHighBlueFranceHover(context)),
      DsfrColor(
          name: 'backgroundActionHighBlueFranceActive',
          description: "blueFranceSun113Active / blueFrance625Active",
          color: DsfrColorDecisions.backgroundActionHighBlueFranceActive(context)),
      DsfrColor(
          name: 'backgroundActionLowBlueFrance',
          description: "blueFrance925 / blueFrance125",
          color: DsfrColorDecisions.backgroundActionLowBlueFrance(context)),
      DsfrColor(
          name: 'backgroundActionLowBlueFranceHover',
          description: "blueFrance925Hover / blueFrance125Hover",
          color: DsfrColorDecisions.backgroundActionLowBlueFranceHover(context)),
      DsfrColor(
          name: 'backgroundActionLowBlueFranceActive',
          description: "blueFrance925Active / blueFrance125Active",
          color: DsfrColorDecisions.backgroundActionLowBlueFranceActive(context)),
      DsfrColor(
          name: 'backgroundActiveBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.backgroundActiveBlueFrance(context)),
      DsfrColor(
          name: 'backgroundOpenBlueFrance',
          description: "blueFrance925 / blueFrance125",
          color: DsfrColorDecisions.backgroundOpenBlueFrance(context)),
      DsfrColor(
          name: 'backgroundOpenBlueFranceHover',
          description: "blueFrance925Hover / blueFrance125Hover",
          color: DsfrColorDecisions.backgroundOpenBlueFranceHover(context)),
      DsfrColor(
          name: 'backgroundOpenBlueFranceActive',
          description: "blueFrance925Active / blueFrance125Active",
          color: DsfrColorDecisions.backgroundOpenBlueFranceActive(context)),
      DsfrColor(
          name: 'backgroundFlatSuccess',
          description: "success425 / success625",
          color: DsfrColorDecisions.backgroundFlatSuccess(context)),
      DsfrColor(
          name: 'backgroundActionHighSuccess',
          description: "success425 / success625",
          color: DsfrColorDecisions.backgroundActionHighSuccess(context)),
      DsfrColor(
          name: 'backgroundFlatError',
          description: "error425 / error625",
          color: DsfrColorDecisions.backgroundFlatError(context)),
      DsfrColor(
          name: 'backgroundActionHighError',
          description: "error425 / error625",
          color: DsfrColorDecisions.backgroundActionHighError(context)),
      DsfrColor(
          name: 'backgroundFlatWarning',
          description: "warning425 / warning625",
          color: DsfrColorDecisions.backgroundFlatWarning(context)),
      DsfrColor(
          name: 'backgroundActionHighWarning',
          description: "warning425 / warning625",
          color: DsfrColorDecisions.backgroundActionHighWarning(context)),
      DsfrColor(
          name: 'backgroundFlatInfo',
          description: "info425 / info625",
          color: DsfrColorDecisions.backgroundFlatInfo(context)),
      DsfrColor(
          name: 'backgroundActionHighInfo',
          description: "info425 / info625",
          color: DsfrColorDecisions.backgroundActionHighInfo(context)),
      DsfrColor(
          name: 'backgroundDisabledGrey',
          description: "grey925 / grey125",
          color: DsfrColorDecisions.backgroundDisabledGrey(context)),
      DsfrColor(
          name: 'backgroundOverlayGrey',
          description:
              "createdForMissingDecisionLightbackgroundOverlayGrey / createdForMissingDecisionLightbackgroundOverlayGrey",
          color: DsfrColorDecisions.backgroundOverlayGrey(context)),
      DsfrColor(
          name: 'backgroundTransparent',
          description: "transparent / transparent",
          color: DsfrColorDecisions.backgroundTransparent(context)),
      DsfrColor(
          name: 'backgroundTransparentHover',
          description: "transparentHover / transparentHover",
          color: DsfrColorDecisions.backgroundTransparentHover(context)),
      DsfrColor(
          name: 'backgroundTransparentActive',
          description: "transparentActive / transparentActive",
          color: DsfrColorDecisions.backgroundTransparentActive(context)),
      DsfrColor(
          name: 'backgroundRaisedGrey',
          description: "grey1000 / grey75",
          color: DsfrColorDecisions.backgroundRaisedGrey(context)),
      DsfrColor(
          name: 'backgroundOverlapGrey',
          description: "grey1000 / grey100",
          color: DsfrColorDecisions.backgroundOverlapGrey(context)),
      DsfrColor(
          name: 'backgroundContrastRaisedGrey',
          description: "grey950 / grey125",
          color: DsfrColorDecisions.backgroundContrastRaisedGrey(context)),
      DsfrColor(
          name: 'backgroundContrastOverlapGrey',
          description: "grey950 / grey150",
          color: DsfrColorDecisions.backgroundContrastOverlapGrey(context)),
      DsfrColor(
          name: 'backgroundLiftedGrey',
          description: "grey1000 / grey75",
          color: DsfrColorDecisions.backgroundLiftedGrey(context)),
      DsfrColor(
          name: 'backgroundAltRaisedGrey',
          description: "grey975 / grey100",
          color: DsfrColorDecisions.backgroundAltRaisedGrey(context)),
      DsfrColor(
          name: 'backgroundAltOverlapGrey',
          description: "grey975 / grey125",
          color: DsfrColorDecisions.backgroundAltOverlapGrey(context)),
      DsfrColor(
          name: 'backgroundContrastBlueFrance',
          description: "blueFrance950 / blueFrance100",
          color: DsfrColorDecisions.backgroundContrastBlueFrance(context)),
      DsfrColor(
          name: 'backgroundFlatGrey',
          description: "grey200 / grey850",
          color: DsfrColorDecisions.backgroundFlatGrey(context)),
      DsfrColor(
          name: 'borderDefaultGrey',
          description: "grey900 / grey175",
          color: DsfrColorDecisions.borderDefaultGrey(context)),
      DsfrColor(
          name: 'borderContrastGrey',
          description: "grey625 / grey425",
          color: DsfrColorDecisions.borderContrastGrey(context)),
      DsfrColor(
          name: 'borderDefaultBlueFrance',
          description: "blueFranceMain525 / blueFranceMain525",
          color: DsfrColorDecisions.borderDefaultBlueFrance(context)),
      DsfrColor(
          name: 'borderActionHighBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.borderActionHighBlueFrance(context)),
      DsfrColor(
          name: 'borderActionHighGrey',
          description: "grey50 / grey1000",
          color: DsfrColorDecisions.borderActionHighGrey(context)),
      DsfrColor(
          name: 'borderActiveBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.borderActiveBlueFrance(context)),
      DsfrColor(
          name: 'borderOpenBlueFrance',
          description: "blueFrance925 / blueFrance125",
          color: DsfrColorDecisions.borderOpenBlueFrance(context)),
      DsfrColor(
          name: 'borderDisabledGrey',
          description: "grey925 / grey125",
          color: DsfrColorDecisions.borderDisabledGrey(context)),
      DsfrColor(
          name: 'borderPlainBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.borderPlainBlueFrance(context)),
      DsfrColor(
          name: 'borderPlainGrey',
          description: "grey200 / grey850",
          color: DsfrColorDecisions.borderPlainGrey(context)),
      DsfrColor(
          name: 'borderPlainSuccess',
          description: "success425 / success625",
          color: DsfrColorDecisions.borderPlainSuccess(context)),
      DsfrColor(
          name: 'borderPlainError',
          description: "error425 / error625",
          color: DsfrColorDecisions.borderPlainError(context)),
      DsfrColor(
          name: 'borderPlainWarning',
          description: "error425 / warning625",
          color: DsfrColorDecisions.borderPlainWarning(context)),
      DsfrColor(
          name: 'borderPlainInfo',
          description: "info425 / info625",
          color: DsfrColorDecisions.borderPlainInfo(context)),
      DsfrColor(
          name: 'borderActionLowBlueFrance',
          description: "blueFrance850 / blueFrance200",
          color: DsfrColorDecisions.borderActionLowBlueFrance(context)),
      DsfrColor(
          name: 'textTitleGrey', description: "grey50 / grey1000", color: DsfrColorDecisions.textTitleGrey(context)),
      DsfrColor(
          name: 'textTitleBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.textTitleBlueFrance(context)),
      DsfrColor(
          name: 'textDefaultGrey',
          description: "grey200 / grey850",
          color: DsfrColorDecisions.textDefaultGrey(context)),
      DsfrColor(
          name: 'textMentionGrey',
          description: "grey425 / grey625",
          color: DsfrColorDecisions.textMentionGrey(context)),
      DsfrColor(
          name: 'textLabelGrey', description: "grey50 / grey1000", color: DsfrColorDecisions.textLabelGrey(context)),
      DsfrColor(
          name: 'textActionHighBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.textActionHighBlueFrance(context)),
      DsfrColor(
          name: 'textActionHighGrey',
          description: "grey50 / grey1000",
          color: DsfrColorDecisions.textActionHighGrey(context)),
      DsfrColor(
          name: 'textActionHighInfo',
          description: "info425 / info625",
          color: DsfrColorDecisions.textActionHighInfo(context)),
      DsfrColor(
          name: 'textActionHighWarning',
          description: "warning425 / warning625",
          color: DsfrColorDecisions.textActionHighWarning(context)),
      DsfrColor(
          name: 'textActionHighError',
          description: "error425 / error625",
          color: DsfrColorDecisions.textActionHighError(context)),
      DsfrColor(
          name: 'textInvertedGrey',
          description: "grey1000 / grey50",
          color: DsfrColorDecisions.textInvertedGrey(context)),
      DsfrColor(
          name: 'textInvertedBlueFrance',
          description: "blueFrance975 / blueFranceSun113",
          color: DsfrColorDecisions.textInvertedBlueFrance(context)),
      DsfrColor(
          name: 'textActiveBlueFrance',
          description: "blueFranceSun113 / blueFrance625",
          color: DsfrColorDecisions.textActiveBlueFrance(context)),
      DsfrColor(
          name: 'textActiveGrey', description: "grey50 / grey1000", color: DsfrColorDecisions.textActiveGrey(context)),
      DsfrColor(
          name: 'textDisabledGrey',
          description: "grey625 / grey425",
          color: DsfrColorDecisions.textDisabledGrey(context)),
      DsfrColor(
          name: 'textDefaultSuccess',
          description: "success425 / success625",
          color: DsfrColorDecisions.textDefaultSuccess(context)),
      DsfrColor(
          name: 'textDefaultError',
          description: "error425 / error625",
          color: DsfrColorDecisions.textDefaultError(context)),
      DsfrColor(
          name: 'textDefaultWarning',
          description: "warning425 / warning625",
          color: DsfrColorDecisions.textDefaultWarning(context)),
      DsfrColor(
          name: 'textDefaultInfo',
          description: "info425 / info625",
          color: DsfrColorDecisions.textDefaultInfo(context)),
    ];
  }
}
