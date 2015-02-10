
$.fn.json_form_fields = function() {
  json = $.parseJSON('['+ this.val() +']');
  str = ''

  for(var key in json){
    if(json[key].constructor === Array){
      str += '<select id="'+key+'">';
      for(var option in json[key]){
        str += '<option value="'+option+'">'+key+'</option>';
      }
      str += '</select>';
    }else{
      str += '<input type="text" id="'+key+'" value="'+json[key]+'">'
    }
  }
};
