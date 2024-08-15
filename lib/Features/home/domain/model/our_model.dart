



class MainModel {
  final String name;
  final salesModel sales;
  final ProductionModel production;


  MainModel(
      {required this.name, required this.sales, required this.production});
 Map<String, dynamic> toJson() {


    return {
        
     
      "sales": salesModel.toJson(sales: sales),
      "production": ProductionModel.toJson(production: production)
    };
  }
}

class salesModel {
  final int sales;
  final DateTime salesDate;
  final int orderId;
  final String notes;
  final String clientName;

  salesModel(
      {required this.sales,
      required this.salesDate,
      required this.orderId,
      required this.notes,
      required this.clientName});
  static Map<String, dynamic> toJson({required salesModel sales}) {
    return {
      "sales": sales.sales,
      "salesDate": sales.salesDate.toString(),
      "orderId": sales.orderId,
      "notes": sales.notes,
      "clientName": sales.clientName
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
