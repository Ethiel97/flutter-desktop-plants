import 'package:flutter/cupertino.dart';
import 'package:flutter_desktop_plant/models/plant.dart';

class StateManager with ChangeNotifier {
  Plant selectedPlant;

  StateManager() {
    selectedPlant = data.first;
  }

  clearSelection() {
    selectedPlant = null;
    notifyListeners();
  }

  set currentPlant(Plant plant) {
    this.selectedPlant = plant;
    notifyListeners();
  }
}
