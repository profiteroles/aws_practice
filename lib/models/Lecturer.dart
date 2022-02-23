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


/** This is an auto generated class representing the Lecturer type in your schema. */
@immutable
class Lecturer extends Model {
  static const classType = const _LecturerModelType();
  final String id;
  final String? _username;
  final String? _email;
  final String? _bio;
  final TemporalTimestamp? _last_login;
  final List<Skill>? _Skills;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get username {
    try {
      return _username!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get bio {
    return _bio;
  }
  
  TemporalTimestamp? get last_login {
    return _last_login;
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
  
  const Lecturer._internal({required this.id, required username, required email, bio, last_login, Skills, createdAt, updatedAt}): _username = username, _email = email, _bio = bio, _last_login = last_login, _Skills = Skills, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Lecturer({String? id, required String username, required String email, String? bio, TemporalTimestamp? last_login, List<Skill>? Skills}) {
    return Lecturer._internal(
      id: id == null ? UUID.getUUID() : id,
      username: username,
      email: email,
      bio: bio,
      last_login: last_login,
      Skills: Skills != null ? List<Skill>.unmodifiable(Skills) : Skills);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lecturer &&
      id == other.id &&
      _username == other._username &&
      _email == other._email &&
      _bio == other._bio &&
      _last_login == other._last_login &&
      DeepCollectionEquality().equals(_Skills, other._Skills);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Lecturer {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("bio=" + "$_bio" + ", ");
    buffer.write("last_login=" + (_last_login != null ? _last_login!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Lecturer copyWith({String? id, String? username, String? email, String? bio, TemporalTimestamp? last_login, List<Skill>? Skills}) {
    return Lecturer._internal(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      bio: bio ?? this.bio,
      last_login: last_login ?? this.last_login,
      Skills: Skills ?? this.Skills);
  }
  
  Lecturer.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _username = json['username'],
      _email = json['email'],
      _bio = json['bio'],
      _last_login = json['last_login'] != null ? TemporalTimestamp.fromSeconds(json['last_login']) : null,
      _Skills = json['Skills'] is List
        ? (json['Skills'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Skill.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'username': _username, 'email': _email, 'bio': _bio, 'last_login': _last_login?.toSeconds(), 'Skills': _Skills?.map((Skill? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "lecturer.id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField BIO = QueryField(fieldName: "bio");
  static final QueryField LAST_LOGIN = QueryField(fieldName: "last_login");
  static final QueryField SKILLS = QueryField(
    fieldName: "Skills",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Skill).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Lecturer";
    modelSchemaDefinition.pluralName = "Lecturers";
    
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
      key: Lecturer.USERNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Lecturer.EMAIL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Lecturer.BIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Lecturer.LAST_LOGIN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Lecturer.SKILLS,
      isRequired: false,
      ofModelName: (Skill).toString(),
      associatedKey: Skill.LECTURERID
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

class _LecturerModelType extends ModelType<Lecturer> {
  const _LecturerModelType();
  
  @override
  Lecturer fromJson(Map<String, dynamic> jsonData) {
    return Lecturer.fromJson(jsonData);
  }
}