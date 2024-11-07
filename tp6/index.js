document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault();
    const username = document.getElementById("t1").value.trim();
    const password = document.getElementById("h1").value.trim();
    if (username === "admin" && password === "admin") {
        window.location.href = "yes.html";  // Redirection vers yes.html pour succès
    } else {
        window.location.href = "no.html";  // Redirection vers no.html pour échec
    }
});

function togglePasswordVisibility() {
    const passwordField = document.getElementById("h1");
    const passwordToggle = document.getElementById("passwordToggle");
    if (passwordField.type === "password") {
        passwordField.type = "text";
        passwordToggle.textContent = "Masquer le mot de passe";
    } else {
        passwordField.type = "password";
        passwordToggle.textContent = "Afficher le mot de passe";
    }
}

function resetForm() {
    document.getElementById("t1").value = "";
    document.getElementById("h1").value = "";
}
