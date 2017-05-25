var Observable = require("FuseJS/Observable");

var Content = Observable();

/*
 * This is the first call of our content 
 */
function fetchContent() {
	fetch('http://127.0.0.1:9000/index.json', {
		headers: { "Content-type": "application/json"}
	}).then(function(response) {
		return response.json();  
	}).then(function(responseObject) {
		Content.value = responseObject;
	});
}

/*
 * I'm pushing the data straight from the loaded JSON 
 * but this is not actually required...
 * You should push the data you already have (and going to use)
 * and fetch the "extra" information, so pushing an ID would be highly adviced
 */
function OpenContentDetails(e) {
	var ContentDetails = e.data;
	router.push("ContentDetails", {
		Title: 			ContentDetails.title,
		Description: 	ContentDetails.description,
		Image: 			ContentDetails.image,
		Hero: 			ContentDetails.hero 
	});
}

fetchContent();

module.exports = {
	Content: 				Content,
	OpenContentDetails: 	OpenContentDetails
}