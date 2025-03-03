using{Currency,managed} from '@sap/cds/common';

namespace ad.bookshop;

entity Books : managed {
  key ID   : Integer;
  title    : localized String(111)  @mandatory;
  descr    : localized String(1111);
  author   : Association to Authors @mandatory;
  //genre    : Association to Genres;
  stock    : Integer;
  price    : Decimal;
  currency : Currency;
  //image    : LargeBinary @Core.MediaType: 'image/png';
}
entity Authors : managed {
  key ID       : Integer;
  name         : String(111) @mandatory;
  dateOfBirth  : Date;
  dateOfDeath  : Date;
  placeOfBirth : String;
  placeOfDeath : String;
  books        : Association to many Books on books.author = $self;
}
