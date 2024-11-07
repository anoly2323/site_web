function calculateTotal() {
    let total1 = document.getElementById('price1').value * document.getElementById('quantity1').value;
    let total2 = document.getElementById('price2').value * document.getElementById('quantity2').value;
    let total3 = document.getElementById('price3').value * document.getElementById('quantity3').value;
    let total4 = document.getElementById('price4').value * document.getElementById('quantity4').value;

    document.getElementById('total1').value = total1.toFixed(2);
    document.getElementById('total2').value = total2.toFixed(2);
    document.getElementById('total3').value = total3.toFixed(2);
    document.getElementById('total4').value = total4.toFixed(2);

    let grandTotal = total1 + total2 + total3 + total4;

    document.getElementById('totalAmount').innerText = grandTotal.toFixed(2);
}

function resetForm() {
    document.getElementById('article1').value = '';
    document.getElementById('price1').value = '';
    document.getElementById('quantity1').value = '';
    document.getElementById('total1').value = '';

    document.getElementById('article2').value = '';
    document.getElementById('price2').value = '';
    document.getElementById('quantity2').value = '';
    document.getElementById('total2').value = '';

    document.getElementById('article3').value = '';
    document.getElementById('price3').value = '';
    document.getElementById('quantity3').value = '';
    document.getElementById('total3').value = '';

    document.getElementById('article4').value = '';
    document.getElementById('price4').value = '';
    document.getElementById('quantity4').value = '';
    document.getElementById('total4').value = '';

    document.getElementById('totalAmount').innerText = '0.00';
}
