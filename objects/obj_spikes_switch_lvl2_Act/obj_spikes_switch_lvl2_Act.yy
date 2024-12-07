{
  "$GMObject":"",
  "%Name":"obj_spikes_switch_lvl2_Act",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_spikes_switch_lvl2_Act",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy_interface","path":"objects/obj_enemy_interface/obj_enemy_interface.yy",},"propertyId":{"name":"delay","path":"objects/obj_enemy_interface/obj_enemy_interface.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0.05",},
  ],
  "parent":{
    "name":"Obstacles",
    "path":"folders/Objects/Obstacles.yy",
  },
  "parentObjectId":{
    "name":"obj_enemy_interface",
    "path":"objects/obj_enemy_interface/obj_enemy_interface.yy",
  },
  "persistent":false,
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
    {"$GMObjectProperty":"v1","%Name":"isOn","filters":[],"listItems":[],"multiselect":false,"name":"isOn","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"oneShotSound","filters":[],"listItems":[],"multiselect":false,"name":"oneShotSound","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"triggerNow","filters":[],"listItems":[],"multiselect":false,"name":"triggerNow","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"True","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_spikes_lvl2",
    "path":"sprites/spr_spikes_lvl2/spr_spikes_lvl2.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}