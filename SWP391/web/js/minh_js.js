/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

function load(selector, path) {
    const cached = localStorage.getItem(path);
    if (cached) {
        document.querySelector(selector).innerHTML = cached;
    }
    fetch(path)
            .then((res) => res.text())
            .then((html) => {
                if (html !== cached) {
                    document.querySelector(selector).innerHTML = html;
                    localStorage.setItem(path, html);
                }
            });
}

function attachQtyInputHandlers() {
    var $qtyInputs = $(".qty-input");

    if (!$qtyInputs.length) {
        return;
    }

    var $inputs = $qtyInputs.find(".product-qty");
    var $countBtn = $qtyInputs.find(".qty-count");
    var qtyMin = parseInt($inputs.attr("min"));
    var qtyMax = parseInt($inputs.attr("max"));

    function updateQuantity($input, qty) {
        var $minusBtn = $input.siblings(".qty-count_minus");
        var $addBtn = $input.siblings(".qty-count_add");

        if (isNaN(qty) || qty <= qtyMin) {
            $input.val(qtyMin);
            qty = 1;
        } else {
            $minusBtn.attr("disabled", false);

            if (qty >= qtyMax) {
                $input.val(qtyMax);
                qty = 1;
            } else {
                $input.val(qty);
                $addBtn.attr('disabled', false);
            }
        }
    }

    $inputs.off('change').on('change', function () {
        var $this = $(this);
        var qty = parseInt($this.val());
        updateQuantity($this, qty);
    });

    $countBtn.off('click').on('click', function () {
        var operator = this.dataset.action;
        var $this = $(this);
        var $input = $this.siblings(".product-qty");
        var qty = parseInt($input.val());

        if (operator === "add") {
            qty += 1;
            if (qty >= qtyMin + 1) {
                $this.siblings(".qty-count_minus").attr("disabled", false);
            }

            if (qty >= qtyMax) {
                qty = 1;
            }
        } else {
            qty = qty <= qtyMin ? qtyMin : (qty -= 1);

            if (qty === qtyMin) {
                qty = 1;
            }

            if (qty < qtyMax) {
                $this.siblings(".qty-count_add").attr("disabled", false);
            }
        }

        updateQuantity($input, qty);
    });
}

// Initially attach handlers
attachQtyInputHandlers();
