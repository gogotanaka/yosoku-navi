// JavaScript Document

tab.setup = {
	tabs: document.getElementById('tab').getElementsByTagName('li'),
	
	pages: [
		document.getElementById('page1'),
		document.getElementById('page2'),
		document.getElementById('page3'),
		document.getElementById('page4'),
		document.getElementById('page5')
	]
}

tab.init();


/* for test
tab.dive = function(){
	var hash = window.location.hash;
	hash = hash.split("?");
	hash = hash[0].split("#");

	if(hash[1] == 'page2') tab.showpage(tab.setup.tabs[1]);
	if(hash[1] == 'page3') tab.showpage(tab.setup.tabs[2]);
	if(hash[1] == 'page4') tab.showpage(tab.setup.tabs[3]);
	if(hash[1] == 'page5') tab.showpage(tab.setup.tabs[4]);
}
tab.dive();
*/
