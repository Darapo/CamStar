import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _cardNumber =
          await secureStorage.getString('ff_cardNumber') ?? _cardNumber;
    });
    await _safeInitAsync(() async {
      _cardHolderName =
          await secureStorage.getString('ff_cardHolderName') ?? _cardHolderName;
    });
    await _safeInitAsync(() async {
      _cardName = await secureStorage.getString('ff_cardName') ?? _cardName;
    });
    await _safeInitAsync(() async {
      _zipCode = await secureStorage.getString('ff_zipCode') ?? _zipCode;
    });
    await _safeInitAsync(() async {
      _phoneNumber =
          await secureStorage.getString('ff_phoneNumber') ?? _phoneNumber;
    });
    await _safeInitAsync(() async {
      _pointData = await secureStorage.getInt('ff_pointData') ?? _pointData;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _cardNumber = '';
  String get cardNumber => _cardNumber;
  set cardNumber(String _value) {
    _cardNumber = _value;
    secureStorage.setString('ff_cardNumber', _value);
  }

  void deleteCardNumber() {
    secureStorage.delete(key: 'ff_cardNumber');
  }

  String _cardHolderName = '';
  String get cardHolderName => _cardHolderName;
  set cardHolderName(String _value) {
    _cardHolderName = _value;
    secureStorage.setString('ff_cardHolderName', _value);
  }

  void deleteCardHolderName() {
    secureStorage.delete(key: 'ff_cardHolderName');
  }

  String _cardName = '';
  String get cardName => _cardName;
  set cardName(String _value) {
    _cardName = _value;
    secureStorage.setString('ff_cardName', _value);
  }

  void deleteCardName() {
    secureStorage.delete(key: 'ff_cardName');
  }

  String _zipCode = '';
  String get zipCode => _zipCode;
  set zipCode(String _value) {
    _zipCode = _value;
    secureStorage.setString('ff_zipCode', _value);
  }

  void deleteZipCode() {
    secureStorage.delete(key: 'ff_zipCode');
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String _value) {
    _phoneNumber = _value;
    secureStorage.setString('ff_phoneNumber', _value);
  }

  void deletePhoneNumber() {
    secureStorage.delete(key: 'ff_phoneNumber');
  }

  int _pointData = 0;
  int get pointData => _pointData;
  set pointData(int _value) {
    _pointData = _value;
    secureStorage.setInt('ff_pointData', _value);
  }

  void deletePointData() {
    secureStorage.delete(key: 'ff_pointData');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
