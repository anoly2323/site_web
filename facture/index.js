function calculateTotal() {
    let total = 0;
    let grandTotal = 0;

    // Calcul pour chaque ligne
    for (let i = 1; i <= 3; i++) {
        let price = parseFloat(document.getElementById('price' + i).value);
        let quantity = parseFloat(document.getElementById('quantity' + i).value);
        if (!isNaN(price) && !isNaN(quantity)) {
            total = price * quantity;
            document.getElementById('result' + i).value = total.toFixed(2);
            grandTotal += total;
        } else {
            document.getElementById('result' + i).value = "";
        }
    }

    // Affichage du total général
    document.getElementById('totalAmount').textContent = grandTotal.toFixed(2);
}

function resetForm() {
    // Réinitialiser tous les champs de saisie
    for (let i = 1; i <= 3; i++) {
        document.getElementById('article' + i).value = "";
        document.getElementById('price' + i).value = "";
        document.getElementById('quantity' + i).value = "";
        document.getElementById('result' + i).value = "";
    }

    document.getElementById('totalAmount').textContent = "0";
}
