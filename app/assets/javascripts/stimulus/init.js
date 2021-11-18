//= require stimulus.umd
//= require stimulus-polyfills
//= require_tree .

(function() {
  if (!("stimulus" in window)) {
    window.stimulus = Stimulus.Application.start()
  }

  stimulus.register('sort-select', SortSelectController)
  stimulus.register('groupable', GroupableController)
  stimulus.register('data-table', DataTableController)
})()
