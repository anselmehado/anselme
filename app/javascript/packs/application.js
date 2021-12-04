// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()



const cursor = document.getElementById('cursor');


window.addEventListener("mousemove", (ev) => {
cursor.style.top = ev.pageY + "px";
cursor.style.left = ev.pageX + "px";
});

$(document).ready(() =>{

	$('.overlay').click(() => {
		$('.overlay').toggleClass('active');
		$('.sigin-form').toggleClass('active-form');
		$('.login-form').toggleClass('active-form');

	})


})
