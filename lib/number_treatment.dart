number_treatment(String value) {
  var result = '';
  if(value.length == 1){
    result = '0.$value';
  }else if(value.length >=2){
    for(int i = 0; i < value.length; i++){
      if(value.length-1 == i){
        result = result + '.';
      }
      result = result + value[i];



    }

  }
  return result;
}