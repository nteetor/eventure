(function() {
  let data_target = "data-evt-target";

  document.addEventListener("DOMContentLoaded", (event) => {
    [...document.querySelectorAll(`[${data_target}]`)].forEach((el) => {
      let target = document.getElementById(el.dataset.evtTarget);

      if (target === null) return;

      el.addEventListener("click", (e) => {
        target["click"]();
      });
    });

    // document.getElementById("button2").addEventListener("click", (event) => {
    //   alert("Button 2 clicked")
    // });
  });
})();
