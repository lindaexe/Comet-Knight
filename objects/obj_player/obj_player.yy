{
  "$GMObject":"",
  "%Name":"obj_player",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_player",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_character_interface","path":"objects/obj_character_interface/obj_character_interface.yy",},"propertyId":{"name":"xVelocity","path":"objects/obj_character_interface/obj_character_interface.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_character_interface","path":"objects/obj_character_interface/obj_character_interface.yy",},"propertyId":{"name":"yVelocity","path":"objects/obj_character_interface/obj_character_interface.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0",},
  ],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":{
    "name":"obj_character_interface",
    "path":"objects/obj_character_interface/obj_character_interface.yy",
  },
  "persistent":true,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"player_state","filters":[],"listItems":[],"multiselect":false,"name":"player_state","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"walkSpeed","filters":[],"listItems":[],"multiselect":false,"name":"walkSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"is_Attacking","filters":[],"listItems":[],"multiselect":false,"name":"is_Attacking","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"attack_Time","filters":[],"listItems":[],"multiselect":false,"name":"attack_Time","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.25","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"facing","filters":[],"listItems":[],"multiselect":false,"name":"facing","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"animation_state","filters":[],"listItems":[],"multiselect":false,"name":"animation_state","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"animation_speed","filters":[],"listItems":[],"multiselect":false,"name":"animation_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.5","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"walk_sound","filters":[],"listItems":[],"multiselect":false,"name":"walk_sound","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"sfx_grass_step","path":"sounds/sfx_grass_step/sfx_grass_step.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"sfx_grass_step","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"step_time","filters":[],"listItems":[],"multiselect":false,"name":"step_time","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"isDead","filters":[],"listItems":[],"multiselect":false,"name":"isDead","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"can_move","filters":[],"listItems":[],"multiselect":false,"name":"can_move","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"True","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_player_walk_down",
    "path":"sprites/spr_player_walk_down/spr_player_walk_down.yy",
  },
  "spriteMaskId":{
    "name":"spr_player_walk_down",
    "path":"sprites/spr_player_walk_down/spr_player_walk_down.yy",
  },
  "visible":true,
}