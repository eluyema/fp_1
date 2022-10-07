// 1
function Singleton(param) {
    return [param];
}
 
const q = [ 1, 2, 3 ]
console.log(`1.1`, Singleton(q))
 
//2
function Null(list) {
    for(const element of list) {
    return false;
  }
  return true;
}
 
const emptyList = [];
const notEmptyList = [ "1", 2 ];
console.log('2.1', Null(emptyList));
console.log('2.2', Null(notEmptyList));
 
//3
function Snoc(list, el) {
    return [...list, el]
}
 
const list = [ 1, 2 ];
const el = "3"
console.log('3.1', Snoc(list, "3"))
 
//4
function Length(list) {
    let i = 0;
  for(const el in list) {
    i++;
  }
  return i;
}
 
const longList = [ 1, 2, "3", 4, "5", 6, 7, "8", 9 ]
console.log('4.1', Length(longList));