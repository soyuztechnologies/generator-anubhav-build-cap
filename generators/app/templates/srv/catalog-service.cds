@Capabilities.BatchSupported : false

service catalogservice @(path : '/api/v1') {

define type DataString {
    value : String;
}

define type DataInteger {
    value : Integer;
}

define type DataNumber {
    value : Double;
}

define type DataList {
    id : Integer;
    title: String;
    userId: Integer;
    completed: Boolean;
}

define type DataListArray {
    responseArray : array of DataList;
}

@Core.Description : 'toInteger'
function toInteger(value : String) returns DataInteger;

@Core.Description : 'toNumber'
function toNumber(value : String) returns DataNumber;

@Core.Description : 'toString'
function toStr(value : Double) returns DataString;

@Core.Description : 'addQuotes'
function addQuotes(value : String) returns DataString;

@Core.Description : 'listToString'
action listToString(responseArray : array of DataList, field : String) returns DataString;

@Core.Description : 'get list of dodos'
function getListOfTodos() returns DataListArray;

}
