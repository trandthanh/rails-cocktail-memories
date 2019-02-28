import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('.navbar-cm-search', {
    strings: ["Whisky?", "Just a finger."],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
