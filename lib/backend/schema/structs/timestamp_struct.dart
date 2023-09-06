// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimestampStruct extends FFFirebaseStruct {
  TimestampStruct({
    TimestampStruct? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _timestamp = timestamp,
        super(firestoreUtilData);

  // "timestamp" field.
  TimestampStruct? _timestamp;
  TimestampStruct get timestamp => _timestamp ?? TimestampStruct();
  set timestamp(TimestampStruct? val) => _timestamp = val;
  void updateTimestamp(Function(TimestampStruct) updateFn) =>
      updateFn(_timestamp ??= TimestampStruct());
  bool hasTimestamp() => _timestamp != null;

  static TimestampStruct fromMap(Map<String, dynamic> data) => TimestampStruct(
        timestamp: TimestampStruct.maybeFromMap(data['timestamp']),
      );

  static TimestampStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TimestampStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'timestamp': _timestamp?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => toMap();
  static TimestampStruct fromSerializableMap(Map<String, dynamic> data) =>
      fromMap(data);

  @override
  String toString() => 'TimestampStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimestampStruct && timestamp == other.timestamp;
  }

  @override
  int get hashCode => const ListEquality().hash([timestamp]);
}

TimestampStruct createTimestampStruct({
  TimestampStruct? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TimestampStruct(
      timestamp: timestamp ?? (clearUnsetFields ? TimestampStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TimestampStruct? updateTimestampStruct(
  TimestampStruct? timestampStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    timestampStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTimestampStructData(
  Map<String, dynamic> firestoreData,
  TimestampStruct? timestampStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (timestampStruct == null) {
    return;
  }
  if (timestampStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && timestampStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final timestampStructData =
      getTimestampFirestoreData(timestampStruct, forFieldValue);
  final nestedData =
      timestampStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = timestampStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTimestampFirestoreData(
  TimestampStruct? timestampStruct, [
  bool forFieldValue = false,
]) {
  if (timestampStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(timestampStruct.toMap());

  // Handle nested data for "timestamp" field.
  addTimestampStructData(
    firestoreData,
    timestampStruct.hasTimestamp() ? timestampStruct.timestamp : null,
    'timestamp',
    forFieldValue,
  );

  // Add any Firestore field values
  timestampStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTimestampListFirestoreData(
  List<TimestampStruct>? timestampStructs,
) =>
    timestampStructs?.map((e) => getTimestampFirestoreData(e, true)).toList() ??
    [];
