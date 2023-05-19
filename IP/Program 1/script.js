document.addEventListener("DOMContentLoaded", function () {
  const loginForm = document.getElementById("loginForm");
  const portfolioContainer = document.getElementById("portfolioContainer");
  const logoutBtn = document.getElementById("logoutBtn");

  loginForm.addEventListener("submit", function (event) {
    event.preventDefault();
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    if (validateLogin(username, password)) {
      localStorage.setItem("isLoggedIn", "true");
      showPortfolio();
    } else {
      alert("Invalid username or password");
    }
  });

  logoutBtn.addEventListener("click", function () {
    localStorage.removeItem("isLoggedIn");
    showLogin();
  });

  if (localStorage.getItem("isLoggedIn") === "true") {
    showPortfolio();
  }

  function showLogin() {
    document.getElementById("loginContainer").classList.remove("hidden");
    portfolioContainer.classList.add("hidden");
  }

  function showPortfolio() {
    document.getElementById("loginContainer").classList.add("hidden");
    portfolioContainer.classList.remove("hidden");
  }

  function validateLogin(username, password) {
    return username === "admin" && password === "password";
  }
});
