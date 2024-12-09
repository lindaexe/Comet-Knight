{
  "$GMObject":"",
  "%Name":"obj_explosion",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":7,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_collidable","path":"objects/obj_collidable/obj_collidable.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_enemy_interface","path":"objects/obj_enemy_interface/obj_enemy_interface.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_explosion",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_parent_damage","path":"objects/obj_parent_damage/obj_parent_damage.yy",},"propertyId":{"name":"damage","path":"objects/obj_parent_damage/obj_parent_damage.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"25",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_parent_damage","path":"objects/obj_parent_damage/obj_parent_damage.yy",},"propertyId":{"name":"isBullet","path":"objects/obj_parent_damage/obj_parent_damage.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"False",},
  ],
  "parent":{
    "name":"Weapon",
    "path":"folders/Objects/Weapon.yy",
  },
  "parentObjectId":{
    "name":"obj_parent_damage",
    "path":"objects/obj_parent_damage/obj_parent_damage.yy",
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
  "properties":[],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_explosion",
    "path":"sprites/spr_explosion/spr_explosion.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}