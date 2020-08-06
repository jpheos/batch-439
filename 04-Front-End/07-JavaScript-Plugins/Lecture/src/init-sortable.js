import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('#results');

  new Sortable(list, {
    animation: 150,
    ghostClass: 'ghost',
    onEnd: (event) => {
      console.log(event);
      // alert('Drag end');
    }
  });
}

export { initSortable };
