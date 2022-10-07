// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Agent _$AgentFromJson(Map<String, dynamic> json) => Agent(
      roleIcon: json['role_icon']['url'] as String?,
      role: json['role'] as String?,
      agentImage: json['agent_image']['url'] as String?,
      title: json['title'] as String?,
      ability1: json['abilities'][0]['ability_icon']['url'] as String?,
      ability2: json['abilities'][1]['ability_icon']['url'] as String?,
      ability3: json['abilities'][2]['ability_icon']['url'] as String?,
      ability4: json['abilities'][3]['ability_icon']['url'] as String?,
      abilityVideo1: json['abilities'][0]['ability_video'][0]['video']['file']
          ['url'] as String?,
      abilityVideo2: json['abilities'][1]['ability_video'][0]['video']['file']
          ['url'] as String?,
      abilityVideo3: json['abilities'][2]['ability_video'][0]['video']['file']
          ['url'] as String?,
      abilityVideo4: json['abilities'][3]['ability_video'][0]['video']['file']
          ['url'] as String?,
    );

Map<String, dynamic> _$AgentToJson(Agent instance) => <String, dynamic>{
      'title': instance.title,
      'role_icon': instance.roleIcon,
      'role': instance.role,
      'agent_image': instance.agentImage,
      'abilities': instance.ability1,
      'ability2': instance.ability2,
      'ability3': instance.ability3,
      'ability4': instance.ability4,
      'abilityVideo1': instance.abilityVideo1,
      'abilityVideo2': instance.abilityVideo2,
      'abilityVideo3': instance.abilityVideo3,
      'abilityVideo4': instance.abilityVideo4,
    };
