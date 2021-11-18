class DataTableController extends Stimulus.Controller {
  initialize() {
    const columns = this.element.querySelectorAll('thead tr th')

    columns.forEach(column => {
      column.style.width = column.offsetWidth + 'px'
    })
  }
}
