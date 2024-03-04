import '../../../core/app_export.dart';

/// This class is used in the [realestatewebsite_item_widget] screen.
class RealestatewebsiteItemModel {
  RealestatewebsiteItemModel({
    this.realEstateWebsite,
    this.teamMembers,
    this.completed,
    this.oneHundred,
    this.id,
  }) {
    realEstateWebsite =
        realEstateWebsite ?? Rx("Real Estate \nWebsite \nDesign");
    teamMembers = teamMembers ?? Rx("Team members");
    completed = completed ?? Rx("Completed");
    oneHundred = oneHundred ?? Rx("100%");
    id = id ?? Rx("");
  }

  Rx<String>? realEstateWebsite;

  Rx<String>? teamMembers;

  Rx<String>? completed;

  Rx<String>? oneHundred;

  Rx<String>? id;
}
