



class MainModel {
  final String name;
  final SallaryModel sallary;
  final ProductionModel production;


  MainModel(
      {required this.name, required this.sallary, required this.production});
 Map<String, dynamic> toJson() {


    return {
        
     
      "sallary": SallaryModel.toJson(sallary: sallary),
      "production": ProductionModel.toJson(production: production)
    };
  }
}

class SallaryModel {
  final int sallary;
  final DateTime sallaryDate;
  final int orderId;
  final String notes;
  final String clientName;

  SallaryModel(
      {required this.sallary,
      required this.sallaryDate,
      required this.orderId,
      required this.notes,
      required this.clientName});
  static Map<String, dynamic> toJson({required SallaryModel sallary}) {
    return {
      "sallary": sallary.sallary,
      "sallaryDate": sallary.sallaryDate.toString(),
      "orderId": sallary.orderId,
      "notes": sallary.notes,
      "clientName": sallary.clientName
    };
  }
}

class ProductionModel {
  final String notes;
  final double? weight;
  final DateTime date;
  final int count;

  ProductionModel(
      {required this.notes,
      required this.weight,
      required this.date,
      required this.count});
 static Map<String, dynamic> toJson({required ProductionModel production}) {
    return {
      
      "notes": production.notes,
      "weight": production.weight,
      "date": production.date.toString(),
      "count": production.count
    };
  }
}
