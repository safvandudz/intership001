
var create= {
  'query':'''
  mutation DPI_Rate_Create(\$createDpiRateInput: CreateDpiRateInput!) {
DPI_Rate_Create(createDpiRateInput: \$createDpiRateInput) {
_id
}
}
  
  ''',
  'variables' :"DpiCreate.toJson()"
};
///create
///{
//   "createDpiRateInput": {
//     "_branchId": null,
//     "_name": null,
//     "_rate": null
//   }
// }
var update= {
  'query':'''
mutation DPI_Rate_Update(\$updateDpiRateInput: UpdateDpiRateInput!) {
  DPI_Rate_Update(updateDpiRateInput: \$updateDpiRateInput) {
    _id
  }
}
  ''',
  'variables' :"DpiCreate.toJson()"
};

///Update
///{
//   "updateDpiRateInput": {
//     "_branchId": null,
//     "_editCount": null,
//     "_id": null,
//     "_name": null,
//     "_rate": null
//   }
// }

var list= {
  'query':'''
query DpiRate_List(\$filterOptions: ListDpiInput!) {
  DpiRate_List(FilterOptions: \$filterOptions) {
    list {
      _editCount
      _id
      _name
      _rate
    }
  }
}
  ''',
  'variables' :{
    "filterOptions": {
      "limit": -1,
      "statusArray": [1]
    }
  }
};