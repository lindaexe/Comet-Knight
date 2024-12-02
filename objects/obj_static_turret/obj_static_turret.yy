{
  "$GMObject":"",
  "%Name":"obj_static_turret",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_static_turret",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy_interface","path":"objects/obj_enemy_interface/obj_enemy_interface.yy",},"propertyId":{"name":"hitPoints","path":"objects/obj_enemy_interface/obj_enemy_interface.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"3",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy_interface","path":"objects/obj_enemy_interface/obj_enemy_interface.yy",},"propertyId":{"name":"isInvulnerable","path":"objects/obj_enemy_interface/obj_enemy_interface.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"False",},
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
    {"$GMObjectProperty":"v1","%Name":"direction","filters":[],"listItems":[],"multiselect":false,"name":"direction","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":4,},
    {"$GMObjectProperty":"v1","%Name":"fireRate","filters":[],"listItems":[],"multiselect":false,"name":"fireRate","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.25","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"shooting","filters":[],"listItems":[],"multiselect":false,"name":"shooting","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"offsetX","filters":[],"listItems":[],"multiselect":false,"name":"offsetX","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"offsetY","filters":[],"listItems":[],"multiselect":false,"name":"offsetY","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"bulletType","filters":[],"listItems":[],"multiselect":false,"name":"bulletType","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_turret_bullet","path":"objects/obj_turret_bullet/obj_turret_bullet.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_turret_bullet","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"delay","filters":[],"listItems":[],"multiselect":false,"name":"delay","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"sound_range","filters":[],"listItems":[],"multiselect":false,"name":"sound_range","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"500","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"shooting_time","filters":[],"listItems":[],"multiselect":false,"name":"shooting_time","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"initial_delay","filters":[],"listItems":[],"multiselect":false,"name":"initial_delay","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.1","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_static_turret",
    "path":"sprites/spr_static_turret/spr_static_turret.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}