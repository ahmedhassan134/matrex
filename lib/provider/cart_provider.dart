import 'package:flutter/cupertino.dart';
import 'package:test22/models/classes/data.dart';

class Cart with ChangeNotifier{
 final List<DataModel> _items=[];
  double _price=0;
  void add(DataModel data){
    _items.add(data);
    _price+=data.price;
    notifyListeners();

  }
  void remove(DataModel data){
    _items.remove(data);
    _price-=data.price;
    notifyListeners();

  }
  int get count{
    return _items.length;
  }
  double get totalPrice{
    return _price;
  }
List<DataModel> get getListItem{
    return _items;
}


}