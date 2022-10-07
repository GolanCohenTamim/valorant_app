import 'package:json_annotation/json_annotation.dart';

part 'agents.g.dart';

@JsonSerializable()
class Agent {
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'role_icon')
  final String? roleIcon;
  @JsonKey(name: 'role')
  final String? role;
  @JsonKey(name: 'agent_image')
  final String? agentImage;
  @JsonKey(name: 'abilities')
  final String? ability1;
  final String? ability2;
  final String? ability3;
  final String? ability4;
  final String? abilityVideo1;
  final String? abilityVideo2;
  final String? abilityVideo3;
  final String? abilityVideo4;

  Agent({
    this.roleIcon,
    this.role,
    this.agentImage,
    this.title,
    this.ability1,
    this.ability2,
    this.ability3,
    this.ability4,
    this.abilityVideo1,
    this.abilityVideo2,
    this.abilityVideo3,
    this.abilityVideo4,
  });

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AgentToJson(this);

  @override
  String toString() {
    return 'Agent {title: $title, role_icon: $roleIcon , role: $role, agent_image: $agentImage, abilities: $ability1,abilities: $ability2, abilities: $ability3,abilities: $ability4,abilities: $abilityVideo1,abilities: $abilityVideo2,abilities: $abilityVideo3,abilities: $abilityVideo4}';
  }
}
