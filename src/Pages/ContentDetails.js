var Observable 		= require("FuseJS/Observable");
var Title 			= Observable();
var Description 	= Observable();
var Image 			= Observable();
var Hero 			= Observable();

/*
 * You can invoke router.goBack() from the element itself but
 * most probably you will want to do something else...
 */
function CloseDetails() {
	router.goBack();	
}

/*
 * This is required for you to refresh this view each time 
 * there is a change since apparently it's not destroyed and recreated... 
 */
this.Parameter.onValueChanged(module,function(param) {
	Title.value 		= param.Title;
	Description.value 	= param.Description;
	Image.value 		= param.Image;
	Hero.value 			= param.Hero;
});

module.exports = {
	CloseDetails: 	CloseDetails,
	Title: 			Title,
	Description: 	Description,
	Image: 			Image,
	Hero: 			Hero
}