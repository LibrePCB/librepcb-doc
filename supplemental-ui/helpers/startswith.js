'use strict'

module.exports = (a, b) => {
  if ((typeof a === 'string') && (typeof b === 'string')) {
    return a.startsWith(b)
  } else {
    return false
  }
}
