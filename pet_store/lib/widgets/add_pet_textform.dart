import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

addPetByTextForm(String petName, String cateName) async {
  PetBuilder petBuilder = PetBuilder();
  CategoryBuilder cateBuilder = CategoryBuilder();
  cateBuilder.name = petName;
  petBuilder.name = cateName;
  petBuilder.status = PetStatusEnum.available;
  petBuilder.category = cateBuilder;
  Pet newPet = petBuilder.build();
  await Openapi().getPetApi().addPet(
        body: newPet,
      );
  debugPrint('pet add');
}
