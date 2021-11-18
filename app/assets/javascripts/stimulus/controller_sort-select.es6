class SortSelectController extends Stimulus.Controller {
  static get targets() {
    return ['columns', 'directions']
  }

  initialize() {
    this.setDirectionOptions({currentTarget: this.columnsTarget})
  }

  setDirectionOptions(evt) {
    const columnsSelect = evt.currentTarget
    const selectedOption = columnsSelect.options[columnsSelect.selectedIndex]
    const selectedSortType = selectedOption.getAttribute('data-sort-type')

    this.directionsTarget.length = 1
    if (selectedSortType == 'numeric') {
      this.directionsTarget.options[0] = new Option('1 → 9', 'asc')
      this.directionsTarget.options[1] = new Option('9 → 1', 'desc')
    }
    else if (selectedSortType == 'alpha') {
      this.directionsTarget.options[0] = new Option('A → Z', 'asc')
      this.directionsTarget.options[1] = new Option('Z → A', 'desc')
    }
    else {
      this.directionsTarget.options[0] = new Option('first → last', 'asc')
      this.directionsTarget.options[1] = new Option('last → first', 'desc')
    }
  }
}
