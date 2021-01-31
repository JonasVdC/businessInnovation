using { sap.capire.horeca as my } from '../db/schema';

service UserService @(path:'/User') {

entity Orders @insertonly as projection on my.Orders;
entity Client @insertonly as projection on my.Client;
entity Address as projection on my.Address excluding {createdAt, createdBy, modifiedAt, modifiedBy};
entity Menu @readonly as projection on my.Menu excluding {createdAt, createdBy, modifiedAt, modifiedBy};
entity MenuItems  @readonly as projection on my.MenuItem excluding {createdAt, createdBy, modifiedAt, modifiedBy};
}
