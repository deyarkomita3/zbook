
using {ad.bookshop as ad} from '../db/datamodel/schema';
//use @impl give path of the custom service logic file path 
//@impl: 'srv/handeler/book-service.js'

service AdminService {
    entity Books   as projection on ad.Books excluding{createdAt,createdBy,modifiedAt,modifiedBy};
    entity Authors as projection on ad.Authors;

  action someAction(ID: Integer) returns Integer; //unbound action

  //function findBookStores () returns array of String; 
}

//annotate AdminService.Books  with @odata.draft.enabled; // 
