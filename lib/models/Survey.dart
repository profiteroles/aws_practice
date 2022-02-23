/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Survey type in your schema. */
@immutable
class Survey extends Model {
  static const classType = const _SurveyModelType();
  final String id;
  final List<Question>? _Questions;
  final Lecturer? _created_by;
  final Company? _submitted_by;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _surveyCreatedById;
  final String? _surveySubmittedById;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<Question>? get Questions {
    return _Questions;
  }
  
  Lecturer? get created_by {
    return _created_by;
  }
  
  Company? get submitted_by {
    return _submitted_by;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get surveyCreatedById {
    return _surveyCreatedById;
  }
  
  String? get surveySubmittedById {
    return _surveySubmittedById;
  }
  
  const Survey._internal({required this.id, Questions, created_by, submitted_by, createdAt, updatedAt, surveyCreatedById, surveySubmittedById}): _Questions = Questions, _created_by = created_by, _submitted_by = submitted_by, _createdAt = createdAt, _updatedAt = updatedAt, _surveyCreatedById = surveyCreatedById, _surveySubmittedById = surveySubmittedById;
  
  factory Survey({String? id, List<Question>? Questions, Lecturer? created_by, Company? submitted_by, String? surveyCreatedById, String? surveySubmittedById}) {
    return Survey._internal(
      id: id == null ? UUID.getUUID() : id,
      Questions: Questions != null ? List<Question>.unmodifiable(Questions) : Questions,
      created_by: created_by,
      submitted_by: submitted_by,
      surveyCreatedById: surveyCreatedById,
      surveySubmittedById: surveySubmittedById);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Survey &&
      id == other.id &&
      DeepCollectionEquality().equals(_Questions, other._Questions) &&
      _created_by == other._created_by &&
      _submitted_by == other._submitted_by &&
      _surveyCreatedById == other._surveyCreatedById &&
      _surveySubmittedById == other._surveySubmittedById;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Survey {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("surveyCreatedById=" + "$_surveyCreatedById" + ", ");
    buffer.write("surveySubmittedById=" + "$_surveySubmittedById");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Survey copyWith({String? id, List<Question>? Questions, Lecturer? created_by, Company? submitted_by, String? surveyCreatedById, String? surveySubmittedById}) {
    return Survey._internal(
      id: id ?? this.id,
      Questions: Questions ?? this.Questions,
      created_by: created_by ?? this.created_by,
      submitted_by: submitted_by ?? this.submitted_by,
      surveyCreatedById: surveyCreatedById ?? this.surveyCreatedById,
      surveySubmittedById: surveySubmittedById ?? this.surveySubmittedById);
  }
  
  Survey.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Questions = json['Questions'] is List
        ? (json['Questions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Question.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _created_by = json['created_by']?['serializedData'] != null
        ? Lecturer.fromJson(new Map<String, dynamic>.from(json['created_by']['serializedData']))
        : null,
      _submitted_by = json['submitted_by']?['serializedData'] != null
        ? Company.fromJson(new Map<String, dynamic>.from(json['submitted_by']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _surveyCreatedById = json['surveyCreatedById'],
      _surveySubmittedById = json['surveySubmittedById'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Questions': _Questions?.map((Question? e) => e?.toJson()).toList(), 'created_by': _created_by?.toJson(), 'submitted_by': _submitted_by?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'surveyCreatedById': _surveyCreatedById, 'surveySubmittedById': _surveySubmittedById
  };

  static final QueryField ID = QueryField(fieldName: "survey.id");
  static final QueryField QUESTIONS = QueryField(
    fieldName: "Questions",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Question).toString()));
  static final QueryField CREATED_BY = QueryField(
    fieldName: "created_by",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Lecturer).toString()));
  static final QueryField SUBMITTED_BY = QueryField(
    fieldName: "submitted_by",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Company).toString()));
  static final QueryField SURVEYCREATEDBYID = QueryField(fieldName: "surveyCreatedById");
  static final QueryField SURVEYSUBMITTEDBYID = QueryField(fieldName: "surveySubmittedById");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Survey";
    modelSchemaDefinition.pluralName = "Surveys";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Survey.QUESTIONS,
      isRequired: false,
      ofModelName: (Question).toString(),
      associatedKey: Question.SURVEYID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Survey.CREATED_BY,
      isRequired: false,
      ofModelName: (Lecturer).toString(),
      associatedKey: Lecturer.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Survey.SUBMITTED_BY,
      isRequired: false,
      ofModelName: (Company).toString(),
      associatedKey: Company.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Survey.SURVEYCREATEDBYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Survey.SURVEYSUBMITTEDBYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _SurveyModelType extends ModelType<Survey> {
  const _SurveyModelType();
  
  @override
  Survey fromJson(Map<String, dynamic> jsonData) {
    return Survey.fromJson(jsonData);
  }
}