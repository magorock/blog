//= require jquery
//= require jquery_ujs
//= require jquery/jquery.socialbutton
//= require_tree .

$ ->
	$('.hatena').socialbutton('hatena', {button: 'standard', url: 'http://sampletest.com'});
	$('.tweet').socialbutton('twitter', {button: 'count', url: 'http://sampletest.com'});
	$('.google_plusone').socialbutton('google_plusone', {lang: 'ja', size: 'medium', url: 'http://sampletest.com'});
	$('.facebook_like').socialbutton('facebook_like', {button: 'button_count', url: 'http://sampletest.com'});