function calculate(operation) {
    // Récupération des valeurs des inputs
    let num1 = parseFloat(document.getElementById('num1').value);
    let num2 = parseFloat(document.getElementById('num2').value);
    let result = 0;
    
    // Vérification des nombres valides
    if (isNaN(num1) || isNaN(num2)) {
        alert("Veuillez entrer deux nombres valides.");
        return;
    }
    
    // Exécution de l'opération
    if (operation === '+') {
        result = num1 + num2;
    } else if (operation === '*') {
        result = num1 * num2;
    } else if (operation === '/') {
        if (num2 === 0) {
            alert("La division par zéro n'est pas permise.");
            return;
        }
        result = num1 / num2;
    }

    // Affichage du résultat
    document.getElementById('resultValue').textContent = result;

    // Vérification de la parité
    if (result % 2 === 0) {
        document.getElementById('parity').textContent = "Parité: Pair";
    } else {
        document.getElementById('parity').textContent = "Parité: Impair";
    }
}

function swap() {
    let num1 = document.getElementById('num1').value;
    let num2 = document.getElementById('num2').value;

    // Permuter les valeurs des deux cases
    document.getElementById('num1').value = num2;
    document.getElementById('num2').value = num1;
}
