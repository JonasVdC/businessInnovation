using { sap.capire.horeca as my } from '../db/schema';

service OwnerService @(path:'/Owner') {

entity Orders @readonly as projection on my.Orders excluding {createdAt, createdBy, modifiedAt, modifiedBy};
entity Menu as projection on my.Menu excluding {createdAt, createdBy, modifiedAt, modifiedBy};
entity MenuItems as projection on my.MenuItem excluding {createdAt, createdBy, modifiedAt, modifiedBy};
}
