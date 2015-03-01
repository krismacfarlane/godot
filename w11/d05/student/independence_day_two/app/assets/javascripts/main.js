$(document).ready(function(){

  var showCountriesSource = $("#country-template").html();
  var generateCountryHTML = _.template(showCountriesSource);


  for(var id = 1, len = 250; id < len; id++) {
    $.ajax({
      url: '/countries/' + id,
      type: 'GET',
      dataType: 'json'
    }).done(function(data) {
      var name = data.name;
      var language = data.language;
      var population = data.population;
      var area = data.area_in_sq_km;
      var image_url = data.flag_image;
      var countryHTML = generateCountryHTML({ name: name, language: language, population: population, area: area, image_url: image_url});
      $("#country-main").append(countryHTML);
    })
  } //end of for loop

  var showCountriesSourceSide = $("#side-country-template").html();
  var generateCountryHTMLSide = _.template(showCountriesSourceSide);

  for(var id = 1, len = 250; id < len; id++) {
    $.ajax({
      url: '/countries/' + id,
      type: 'GET',
      dataType: 'json'
    }).done(function(data) {
      var name = data.name;
      var countryHTML = generateCountryHTMLSide({ name: name});
      $("#countries-container").append(countryHTML);
    })
  }


}); //final closing
