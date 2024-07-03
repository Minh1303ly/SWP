let currentSortColumnIndex = -1;
let sortAscending = true;

document.addEventListener("DOMContentLoaded", function () {
    let table = document.getElementById("userTable");
    let ths = table.querySelectorAll("th[data-sort]");
    ths.forEach(function (th, index) {
        th.addEventListener("click", function () {
            if (currentSortColumnIndex === index) {
                sortAscending = !sortAscending;
            } else {
                sortAscending = true;
                currentSortColumnIndex = index;
            }
            sortTable(table, index, th.getAttribute("data-sort"), sortAscending);
            updateSortIndicator(th);
        });
    });
});

function sortTable(table, columnIndex, dataType, ascending) {
    let rows = Array.from(table.getElementsByTagName("tr"));
    let isNumber = dataType === "number";
    rows.shift(); // Remove the header row

    rows.sort(function (rowA, rowB) {
        let inputA = rowA.getElementsByTagName("td")[columnIndex].querySelector(".sortValue").value;
        let inputB = rowB.getElementsByTagName("td")[columnIndex].querySelector(".sortValue").value;
        let cellA = isNumber ? parseInt(inputA) : inputA.toLowerCase();
        let cellB = isNumber ? parseInt(inputB) : inputB.toLowerCase();

        if (cellA < cellB) {
            return ascending ? -1 : 1;
        }
        if (cellA > cellB) {
            return ascending ? 1 : -1;
        }
        return 0;
    });

    let tbody = table.querySelector("tbody");
    rows.forEach(function (row) {
        tbody.appendChild(row);
    });
}

//function sortTable(table, columnIndex, dataType, ascending) {
//    let rows = Array.from(table.getElementsByTagName("tr"));
//    let isNumber = dataType === "number";
//    rows.shift(); // Loại bỏ hàng tiêu đề
//
//    rows.sort(function (rowA, rowB) {
//        let cellA = rowA.getElementsByTagName("td")[columnIndex].innerText;
//        let cellB = rowB.getElementsByTagName("td")[columnIndex].innerText;
//        if (isNumber) {
//            return (parseInt(cellA) - parseInt(cellB)) * (ascending ? 1 : -1);
//        } else {
//            return cellA.localeCompare(cellB) * (ascending ? 1 : -1);
//        }
//    });
//    let tbody = table.querySelector("tbody");
//    rows.forEach(function (row) {
//        tbody.appendChild(row);
//    });
//}

function updateSortIndicator(th) {
    let indicator = th.querySelector(".sort-indicator");
    if (!indicator) {
        indicator = document.createElement("span");
        indicator.classList.add("sort-indicator");
        th.appendChild(indicator);
    }
    indicator.innerHTML = sortAscending ? "&#9660;" : "&#9650;";
}
function searchTable() {
    const input = document.getElementById('productSearch');
    const filter = input.value.toLowerCase();
    const table = document.getElementById('userTable');
    const trs = table.getElementsByTagName('tr');

    for (let i = 1; i < trs.length; i++) { // Start from 1 to skip the header row
        const tds = trs[i].getElementsByTagName('td');
        let showRow = false;

        for (let j = 0; j < tds.length; j++) {
            const td = tds[j];
            if (td) {
                if (td.textContent.toLowerCase().indexOf(filter) > -1) {
                    showRow = true;
                    break;
                }
            }
        }
        trs[i].style.display = showRow ? '' : 'none';
    }
}