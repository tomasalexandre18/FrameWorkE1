console.log('Hello World');

const div = document.querySelector('#container');
div.style.opacity = '1';
div.style.width = '100vw';
div.style.minHeight = '100vh';



const tl = gsap.timeline({
    defaults: {
        duration: 0.5,
    }
});
tl.to('div#container', {
    x: '100vw',
    rotateZ: '90deg',
    duration: 0.0,
})

gsap.to('div#container', {
    x: 0,
    opacity: 1,
    rotateZ: '0deg',
    ease: 'power2.inOut',
    duration: 0.5,
})

const a = document.querySelectorAll('a');
a.forEach((link) => {
    link.addEventListener('click', function (e) {
        e.preventDefault();
        const href = this.getAttribute('href');
        gsap.to('div#container', {
            x: '-100vw',
            rotateZ: '-560deg',
            ease: 'power2.inOut',
            duration: 0.5,
        }).then(() => {
            window.location.href = href;
        });
    });
});

const submitButton = document.querySelector('button[type="submit"]');
const form = document.querySelector('form');
let alreadySubmit =false

div.style.opacity = '0';

submitButton.addEventListener('click', function (e) {
    if (alreadySubmit) {
        return;
    }
    e.preventDefault();
    gsap.to('div#container', {
        x: '-100vw',
        rotateZ: '-560deg',
        ease: 'power2.inOut',
        duration: 0.5,
    }).then(() => {
        console.log('submit');
        form.submit()
    });
    alreadySubmit = true
})
