// ignore_for_file: depend_on_referenced_packages

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  // * Start Menu Sections
  int indexPage = 0;

  void openHomeScreen() {
    indexPage = 0;
    notifyListeners();
  }

  void openBannarsScreen() {
    indexPage = 1;
    notifyListeners();
  }

  void openUsersScreen() {
    indexPage = 2;
    notifyListeners();
  }

  void openStoresScreen() {
    indexPage = 3;
    notifyListeners();
  }

  void openOrdersScreen() {
    indexPage = 4;
    notifyListeners();
  }

  void openProductsScreen() {
    indexPage = 5;
    notifyListeners();
  }

  void openAboutConditionsScreen() {
    indexPage = 6;
    notifyListeners();
  }

  void openContactusScreen() {
    indexPage = 7;
    notifyListeners();
  }

  void openSettingScreen() {
    indexPage = 8;
    notifyListeners();
  }

  void openLogoutScreen() {
    indexPage = 9;
    notifyListeners();
  }

  void openNotificationsScreen() {
    indexPage = 10;
    notifyListeners();
  }

  void openAddUsers() {
    indexPage = 11;
    notifyListeners();
  }

  void openAddStores() {
    indexPage = 12;
    notifyListeners();
  }

  // * End Menu Sections

  // * internet connection
  ConnectivityResult? connectivityResult;
}
