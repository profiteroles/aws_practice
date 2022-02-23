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


/** This is an auto generated class representing the Student type in your schema. */
@immutable
class Student extends Model {
  static const classType = const _StudentModelType();
  final String id;
  final String? _studend_id;
  final String? _name;
  final String? _github;
  final String? _profile_url;
  final List<Skill>? _Skills;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get studend_id {
    try {
      return _studend_id!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get github {
    return _github;
  }
  
  String? get profile_url {
    return _profile_url;
  }
  
  List<Skill>? get Skills {
    return _Skills;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Student._internal({required this.id, required studend_id, required name, github, profile_url, Skills, createdAt, updatedAt}): _studend_id = studend_id, _name = name, _github = github, _profile_url = profile_url, _Skills = Skills, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Student({String? id, required String studend_id, required String name, String? github, String? profile_url, List<Skill>? Skills}) {
    return Student._internal(
      id: id == null ? UUID.getUUID() : id,
      studend_id: studend_id,
      name: name,
      github: github,
      profile_url: profile_url,
      Skills: Skills != null ? List<Skill>.unmodifiable(Skills) : Skills);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Student &&
      id == other.id &&
      _studend_id == other._studend_id &&
      _name == other._name &&
      _github == other._github &&
      _profile_url == other._profile_url &&
      DeepCollectionEquality().equals(_Skills, other._Skills);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Student {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("studend_id=" + "$_studend_id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("github=" + "$_github" + ", ");
    buffer.write("profile_url=" + "$_profile_url" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Student copyWith({String? id, String? studend_id, String? name, String? github, String? profile_url, List<Skill>? Skills}) {
    return Student._internal(
      id: id ?? this.id,
      studend_id: studend_id ?? this.studend_id,
      name: name ?? this.name,
      github: github ?? this.github,
      profile_url: profile_url ?? this.profile_url,
      Skills: Skills ?? this.Skills);
  }
  
  Student.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _studend_id = json['studend_id'],
      _name = json['name'],
      _github = json['github'],
      _profile_url = json['profile_url'],
      _Skills = json['Skills'] is List
        ? (json['Skills'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Skill.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'studend_id': _studend_id, 'name': _name, 'github': _github, 'profile_url': _profile_url, 'Skills': _Skills?.map((Skill? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "student.id");
  static final QueryField STUDEND_ID = QueryField(fieldName: "studend_id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField GITHUB = QueryField(fieldName: "github");
  static final QueryField PROFILE_URL = QueryField(fieldName: "profile_url");
  static final QueryField SKILLS = QueryField(
    fieldName: "Skills",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Skill).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Student";
    modelSchemaDefinition.pluralName = "Students";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.STUDEND_ID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.GITHUB,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Student.PROFILE_URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Student.SKILLS,
      isRequired: false,
      ofModelName: (Skill).toString(),
      associatedKey: Skill.STUDENTID
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
  });
}

class _StudentModelType extends ModelType<Student> {
  const _StudentModelType();
  
  @override
  Student fromJson(Map<String, dynamic> jsonData) {
    return Student.fromJson(jsonData);
  }
}