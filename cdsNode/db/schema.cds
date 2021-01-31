using { Currency, managed, sap } from '@sap/cds/common';
namespace sap.capire.horeca;


entity Client : managed {
    key ID : Integer;
    restaurant: Association to Restaurant;
    name : String(40);
    mail : String(100);
    phone : String(15);
    date : DateTime;
    tableNr: Integer;
}

entity Restaurant : managed {
    key ID : Integer;
    owner: Association to Owner;
    name : String(40);
    address: Association to Address;
    iban : String(25);
}

entity Owner : managed {
    key ID : Integer;
    name : String(40);
    address: Association to Address;
    mail : String(100);
    phone : String(15);
    vat : String(25);
    user : Association to User;
}

entity Orders : managed {
    key ID : Integer;
    restaurant: Association to Restaurant;
    amount: Decimal;
}

entity Menu : managed {
    key ID : Integer;
    prijs : Decimal;
    MenuItem: Association to  many MenuItem on MenuItem.menu = $self;
}

entity MenuItem : managed {
    key ID : Integer;
    name : String(40);
    description: String(150);
    category: Integer enum {
        vlees = 1; 
        vis = 2; 
        vegan = 3; 
        lactosevrij= 4;};
    menu: Association to Menu;
}

entity User : managed {
    key ID : Integer;
    role: String enum {admin; standard;};
    username: String(40);
    password: String(56)
}

entity Address : managed {
    key ID : Integer;
    countryCode : String(5);
    city: String(40);
    zip: String(10);
    street: String(70);
    number: String(10);



}