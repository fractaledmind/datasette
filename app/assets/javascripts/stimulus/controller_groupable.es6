class GroupableController extends Stimulus.Controller {
  static get targets() {
    return ['row', 'button']
  }

  initialize() {
    this.collapsedClassName = 'groupable-row-hidden'
    if (this.buttonTarget.getAttribute('aria-expanded') == 'true') {
      this.expandGrouped()
    } else {
      this.collapseGrouped()
    }
  }

  toggle() {
    if (this.buttonTarget.getAttribute('aria-expanded') == 'true') {
      this.collapseGrouped()
    } else {
      this.expandGrouped()
    }
  }

  collapseGrouped() {
    this.buttonTarget.setAttribute('aria-expanded', 'false')
    this.rowTargets.forEach((rowNode) => rowNode.classList.add(this.collapsedClassName))
  }

  expandGrouped() {
    this.buttonTarget.setAttribute('aria-expanded', 'true')
    this.rowTargets.forEach((rowNode) => rowNode.classList.remove(this.collapsedClassName))
  }
}
