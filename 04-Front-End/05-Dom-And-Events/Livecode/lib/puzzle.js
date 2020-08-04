// Click on button should make hint appear

const button = document.querySelector('#show-hint');
button.addEventListener('click', () => {
  // Make hint appear
  const hint = document.querySelector('.hint')
  hint.classList.add('active');
});


// 1. Listen for click on each cell
const cells = document.querySelectorAll('table td');
cells.forEach((cell) => {
  cell.addEventListener('click', (event) => {
    // 2. Check if empty cell is in neighborhood
    if (canMove(cell)) {
      // 3. Inverse position of empty cell and current cell
      moveCell(cell);
      // 4. Check if player wins
      if (checkIfPlayerWins()) {
        setTimeout(() => { alert('Bsahtek !') }, 0);
      }
    }
  });
});

const canMove = (cell) => {
  const currentCellX = cell.cellIndex;
  const currentCellY = cell.parentNode.rowIndex;

  const emptyCell = document.querySelector('.empty');
  const emptyCellX = emptyCell.cellIndex;
  const emptyCellY = emptyCell.parentNode.rowIndex;

  const result = Math.abs((emptyCellX + emptyCellY) - (currentCellX + currentCellY));

  if (result === 1) {
    return true;
  } else {
    return false;
  }
};

const moveCell = (cell) => {
  const emptyCell = document.querySelector('.empty');
  // Move empty class from empty cell to clicked cell
  emptyCell.classList.remove('empty');
  cell.classList.add('empty');
  // Invert innerText of cells
  emptyCell.innerText = cell.innerText;
  cell.innerText = '';
}

const checkIfPlayerWins = () => {
  let win = true;

  const emptyCell = document.querySelector('.empty');
  const emptyCellX = emptyCell.cellIndex;
  const emptyCellY = emptyCell.parentNode.rowIndex;

  document.querySelectorAll('table td').forEach((cell, index) => {
    if (!cell.classList.contains('empty') &&
        cell.innerText !== (index + 1).toString()) {
      win = false;
    }
  });

  return win;
}







