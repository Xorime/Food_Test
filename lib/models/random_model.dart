class RandomModel {
  late List<Meals> meals;
  String error = '';

  RandomModel({required this.meals});

  RandomModel.withError(String errorMessage) {
    error = errorMessage;
  }

  RandomModel.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      meals = <Meals>[];
      json['meals'].forEach((v) {
        meals.add(new Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meals != null) {
      data['meals'] = this.meals.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meals {
  late String idMeal;
  late String strMeal;
  late Null strDrinkAlternate;
  late String strCategory;
  late String strArea;
  late String strInstructions;
  late String strMealThumb;
  late String strTags;
  late String strYoutube;
  late String strIngredient1;
  late String strIngredient2;
  late String strIngredient3;
  late String strIngredient4;
  late String strIngredient5;
  late String strIngredient6;
  late String strIngredient7;
  late String strIngredient8;
  late String strIngredient9;
  late String strIngredient10;
  late String strIngredient11;
  late String strIngredient12;
  late String strIngredient13;
  late String strIngredient14;
  late String strIngredient15;
  late String strIngredient16;
  late String strIngredient17;
  late String strIngredient18;
  late String strIngredient19;
  late String strIngredient20;
  late String strMeasure1;
  late String strMeasure2;
  late String strMeasure3;
  late String strMeasure4;
  late String strMeasure5;
  late String strMeasure6;
  late String strMeasure7;
  late String strMeasure8;
  late String strMeasure9;
  late String strMeasure10;
  late String strMeasure11;
  late String strMeasure12;
  late String strMeasure13;
  late String strMeasure14;
  late String strMeasure15;
  late String strMeasure16;
  late String strMeasure17;
  late String strMeasure18;
  late String strMeasure19;
  late String strMeasure20;
  late String strSource;
  late Null strImageSource;
  late Null strCreativeCommonsConfirmed;
  late Null dateModified;

  Meals(
      {required this.idMeal,
      required this.strMeal,
      this.strDrinkAlternate,
      required this.strCategory,
      required this.strArea,
      required this.strInstructions,
      required this.strMealThumb,
      required this.strTags,
      required this.strYoutube,
      required this.strIngredient1,
      required this.strIngredient2,
      required this.strIngredient3,
      required this.strIngredient4,
      required this.strIngredient5,
      required this.strIngredient6,
      required this.strIngredient7,
      required this.strIngredient8,
      required this.strIngredient9,
      required this.strIngredient10,
      required this.strIngredient11,
      required this.strIngredient12,
      required this.strIngredient13,
      required this.strIngredient14,
      required this.strIngredient15,
      required this.strIngredient16,
      required this.strIngredient17,
      required this.strIngredient18,
      required this.strIngredient19,
      required this.strIngredient20,
      required this.strMeasure1,
      required this.strMeasure2,
      required this.strMeasure3,
      required this.strMeasure4,
      required this.strMeasure5,
      required this.strMeasure6,
      required this.strMeasure7,
      required this.strMeasure8,
      required this.strMeasure9,
      required this.strMeasure10,
      required this.strMeasure11,
      required this.strMeasure12,
      required this.strMeasure13,
      required this.strMeasure14,
      required this.strMeasure15,
      required this.strMeasure16,
      required this.strMeasure17,
      required this.strMeasure18,
      required this.strMeasure19,
      required this.strMeasure20,
      required this.strSource,
      this.strImageSource,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

  Meals.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strDrinkAlternate = json['strDrinkAlternate'];
    strCategory = json['strCategory'];
    strArea = json['strArea'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
    strTags = json['strTags'];
    strYoutube = json['strYoutube'];
    strIngredient1 = json['strIngredient1'];
    strIngredient2 = json['strIngredient2'];
    strIngredient3 = json['strIngredient3'];
    strIngredient4 = json['strIngredient4'];
    strIngredient5 = json['strIngredient5'];
    strIngredient6 = json['strIngredient6'];
    strIngredient7 = json['strIngredient7'];
    strIngredient8 = json['strIngredient8'];
    strIngredient9 = json['strIngredient9'];
    strIngredient10 = json['strIngredient10'];
    strIngredient11 = json['strIngredient11'];
    strIngredient12 = json['strIngredient12'];
    strIngredient13 = json['strIngredient13'];
    strIngredient14 = json['strIngredient14'];
    strIngredient15 = json['strIngredient15'];
    strIngredient16 = json['strIngredient16'];
    strIngredient17 = json['strIngredient17'];
    strIngredient18 = json['strIngredient18'];
    strIngredient19 = json['strIngredient19'];
    strIngredient20 = json['strIngredient20'];
    strMeasure1 = json['strMeasure1'];
    strMeasure2 = json['strMeasure2'];
    strMeasure3 = json['strMeasure3'];
    strMeasure4 = json['strMeasure4'];
    strMeasure5 = json['strMeasure5'];
    strMeasure6 = json['strMeasure6'];
    strMeasure7 = json['strMeasure7'];
    strMeasure8 = json['strMeasure8'];
    strMeasure9 = json['strMeasure9'];
    strMeasure10 = json['strMeasure10'];
    strMeasure11 = json['strMeasure11'];
    strMeasure12 = json['strMeasure12'];
    strMeasure13 = json['strMeasure13'];
    strMeasure14 = json['strMeasure14'];
    strMeasure15 = json['strMeasure15'];
    strMeasure16 = json['strMeasure16'];
    strMeasure17 = json['strMeasure17'];
    strMeasure18 = json['strMeasure18'];
    strMeasure19 = json['strMeasure19'];
    strMeasure20 = json['strMeasure20'];
    strSource = json['strSource'];
    strImageSource = json['strImageSource'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = json['dateModified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idMeal'] = this.idMeal;
    data['strMeal'] = this.strMeal;
    data['strDrinkAlternate'] = this.strDrinkAlternate;
    data['strCategory'] = this.strCategory;
    data['strArea'] = this.strArea;
    data['strInstructions'] = this.strInstructions;
    data['strMealThumb'] = this.strMealThumb;
    data['strTags'] = this.strTags;
    data['strYoutube'] = this.strYoutube;
    data['strIngredient1'] = this.strIngredient1;
    data['strIngredient2'] = this.strIngredient2;
    data['strIngredient3'] = this.strIngredient3;
    data['strIngredient4'] = this.strIngredient4;
    data['strIngredient5'] = this.strIngredient5;
    data['strIngredient6'] = this.strIngredient6;
    data['strIngredient7'] = this.strIngredient7;
    data['strIngredient8'] = this.strIngredient8;
    data['strIngredient9'] = this.strIngredient9;
    data['strIngredient10'] = this.strIngredient10;
    data['strIngredient11'] = this.strIngredient11;
    data['strIngredient12'] = this.strIngredient12;
    data['strIngredient13'] = this.strIngredient13;
    data['strIngredient14'] = this.strIngredient14;
    data['strIngredient15'] = this.strIngredient15;
    data['strIngredient16'] = this.strIngredient16;
    data['strIngredient17'] = this.strIngredient17;
    data['strIngredient18'] = this.strIngredient18;
    data['strIngredient19'] = this.strIngredient19;
    data['strIngredient20'] = this.strIngredient20;
    data['strMeasure1'] = this.strMeasure1;
    data['strMeasure2'] = this.strMeasure2;
    data['strMeasure3'] = this.strMeasure3;
    data['strMeasure4'] = this.strMeasure4;
    data['strMeasure5'] = this.strMeasure5;
    data['strMeasure6'] = this.strMeasure6;
    data['strMeasure7'] = this.strMeasure7;
    data['strMeasure8'] = this.strMeasure8;
    data['strMeasure9'] = this.strMeasure9;
    data['strMeasure10'] = this.strMeasure10;
    data['strMeasure11'] = this.strMeasure11;
    data['strMeasure12'] = this.strMeasure12;
    data['strMeasure13'] = this.strMeasure13;
    data['strMeasure14'] = this.strMeasure14;
    data['strMeasure15'] = this.strMeasure15;
    data['strMeasure16'] = this.strMeasure16;
    data['strMeasure17'] = this.strMeasure17;
    data['strMeasure18'] = this.strMeasure18;
    data['strMeasure19'] = this.strMeasure19;
    data['strMeasure20'] = this.strMeasure20;
    data['strSource'] = this.strSource;
    data['strImageSource'] = this.strImageSource;
    data['strCreativeCommonsConfirmed'] = this.strCreativeCommonsConfirmed;
    data['dateModified'] = this.dateModified;
    return data;
  }
}
