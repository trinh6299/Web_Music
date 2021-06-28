var slider1 = document.getElementById('slider1');
var slider2 = document.getElementById('slider2');
var slider3 = document.getElementById('slider3');
var slider4 = document.getElementById('slider4');
var slider5 = document.getElementById('slider5');

var child1 = document.getElementById('child1');
var child2 = document.getElementById('child2');
var child3 = document.getElementById('child3');
var child4 = document.getElementById('child4');
var child5 = document.getElementById('child5');

slider1.style.display = 'block';
slider2.style.display = 'none';
slider3.style.display = 'none';
slider4.style.display = 'none';
slider5.style.display = 'none';
child2.onmouseover = function () {
	slider1.style.display = 'none';
	slider2.style.display = 'block';
	slider3.style.display = 'none';
	slider4.style.display = 'none';
	slider5.style.display = 'none';
};
child3.onmouseover = function () {
	slider1.style.display = 'none';
	slider2.style.display = 'none';
	slider3.style.display = 'block';
	slider4.style.display = 'none';
	slider5.style.display = 'none';
};
child4.onmouseover = function () {
	slider1.style.display = 'none';
	slider2.style.display = 'none';
	slider3.style.display = 'none';
	slider4.style.display = 'block';
	slider5.style.display = 'none';
};
child5.onmouseover = function () {
	slider1.style.display = 'none';
	slider2.style.display = 'none';
	slider3.style.display = 'none';
	slider4.style.display = 'none';
	slider5.style.display = 'block';
};

// bảng xếp hạng
var a1 = document.getElementById('bxh1');
var a2 = document.getElementById('bxh2');
var a3 = document.getElementById('bxh3');

var t1 = document.getElementById('top20-viet');
var t2 = document.getElementById('top20-au-my');
var t3 = document.getElementById('top20-han-quoc');
a1.addEventListener("click", (event) => {
	event.preventDefault();
	t1.style.display = 'block';
	a1.style.background = '#E74C3C';
	a1.style.color = 'white';
	a2.style.background = 'transparent';
	a3.style.background = 'transparent';
	t2.style.display = 'none';
	t3.style.display = 'none';
});
a2.addEventListener("click", (event) => {
	event.preventDefault();
	t1.style.display = 'none';
	a2.style.background = '#E74C3C';
	a1.style.background = 'transparent';
	a3.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.)';
	t2.style.display = 'block';
	t3.style.display = 'none';
});
a3.addEventListener("click", (event) => {
	event.preventDefault();
	t1.style.display = 'none';
	t2.style.display = 'none';
	t3.style.display = 'block';
	a2.style.background = 'transparent';
	a1.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.8)';
	a3.style.background = '#E74C3C';
});
a1.addEventListener("mouseover", (event) => {
	event.preventDefault();
	a1.style.color = 'white';
	a1.style.background = '#E74C3C';
	a2.style.background = 'transparent';
	a3.style.background = 'transparent';
});
a2.addEventListener("mouseover", (event) => {
	event.preventDefault();

	a2.style.background = '#E74C3C';
	a1.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.8)';
	a3.style.background = 'transparent';

});
a3.addEventListener("mouseover", (event) => {
	event.preventDefault();

	a2.style.background = 'transparent';
	a1.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.8)';
	a3.style.background = '#E74C3C';
});

////trending

var togglelis = document.querySelectorAll('.trending ul li a img[open="toggle"]');
console.log(togglelis);
togglelis.forEach(img => {
	img.onmouseover = (event) => {
		var divs = document.querySelectorAll('.trending-item');

		divs.forEach(div => div.style.display = 'none');
		var targetid = event.target.getAttribute("target");
		console.log(targetid);
		var targettd = document.getElementById(targetid);
		if (targettd.style.display == 'block') {
			targettd.style.display = 'none';
		}
		else {
			targettd.style.display = 'block';
		}

	}
});

