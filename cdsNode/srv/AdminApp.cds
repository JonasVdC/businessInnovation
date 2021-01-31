using { sap.capire.horeca as my } from '../db/schema';

service AdminService @(path:'/Admin') {

entity Orders @readonly as projection on my.Orders excluding {createdAt, createdBy, modifiedAt, modifiedBy};
entity Client @readonly as projection on my.Client excluding {createdBy, modifiedAt,modifiedBy};
entity Address as projection on my.Address excluding {createdAt, createdBy, modifiedAt, modifiedBy};
entity Owners as projection on my.Owner;
entity Restaurant as projection on my.Restaurant;
entity Users as projection on my.User;
}