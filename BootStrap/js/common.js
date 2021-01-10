if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
  $(document).ready(function() {
    document.querySelector("body").className = "bootstrap-dark";
  });
}