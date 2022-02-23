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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Question type in your schema. */
@immutable
class Question extends Model {
  static const classType = const _QuestionModelType();
  final String id;
  final String? _question;
  final String? _answer;
  final String? _surveyID;
  final Lecturer? _created_by;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _questionCreatedById;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get question {
    try {
      return _question!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get answer {
    try {
      return _answer!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get surveyID {
    try {
      return _surveyID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Lecturer? get created_by {
    return _created_by;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get questionCreatedById {
    return _questionCreatedById;
  }
  
  const Question._internal({required this.id, required question, required answer, required surveyID, created_by, createdAt, updatedAt, questionCreatedById}): _question = question, _answer = answer, _surveyID = surveyID, _created_by = created_by, _createdAt = createdAt, _updatedAt = updatedAt, _questionCreatedById = questionCreatedById;
  
  factory Question({String? id, required String question, required String answer, required String surveyID, Lecturer? created_by, String? questionCreatedById}) {
    return Question._internal(
      id: id == null ? UUID.getUUID() : id,
      question: question,
      answer: answer,
      surveyID: surveyID,
      created_by: created_by,
      questionCreatedById: questionCreatedById);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
      id == other.id &&
      _question == other._question &&
      _answer == other._answer &&
      _surveyID == other._surveyID &&
      _created_by == other._created_by &&
      _questionCreatedById == other._questionCreatedById;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Question {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("question=" + "$_question" + ", ");
    buffer.write("answer=" + "$_answer" + ", ");
    buffer.write("surveyID=" + "$_surveyID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("questionCreatedById=" + "$_questionCreatedById");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Question copyWith({String? id, String? question, String? answer, String? surveyID, Lecturer? created_by, String? questionCreatedById}) {
    return Question._internal(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      surveyID: surveyID ?? this.surveyID,
      created_by: created_by ?? this.created_by,
      questionCreatedById: questionCreatedById ?? this.questionCreatedById);
  }
  
  Question.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _question = json['question'],
      _answer = json['answer'],
      _surveyID = json['surveyID'],
      _created_by = json['created_by']?['serializedData'] != null
        ? Lecturer.fromJson(new Map<String, dynamic>.from(json['created_by']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _questionCreatedById = json['questionCreatedById'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'question': _question, 'answer': _answer, 'surveyID': _surveyID, 'created_by': _created_by?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'questionCreatedById': _questionCreatedById
  };

  static final QueryField ID = QueryField(fieldName: "question.id");
  static final QueryField QUESTION = QueryField(fieldName: "question");
  static final QueryField ANSWER = QueryField(fieldName: "answer");
  static final QueryField SURVEYID = QueryField(fieldName: "surveyID");
  static final QueryField CREATED_BY = QueryField(
    fieldName: "created_by",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Lecturer).toString()));
  static final QueryField QUESTIONCREATEDBYID = QueryField(fieldName: "questionCreatedById");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Question";
    modelSchemaDefinition.pluralName = "Questions";
    
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
      key: Question.QUESTION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Question.ANSWER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Question.SURVEYID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Question.CREATED_BY,
      isRequired: false,
      ofModelName: (Lecturer).toString(),
      associatedKey: Lecturer.ID
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
      key: Question.QUESTIONCREATEDBYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _QuestionModelType extends ModelType<Question> {
  const _QuestionModelType();
  
  @override
  Question fromJson(Map<String, dynamic> jsonData) {
    return Question.fromJson(jsonData);
  }
}