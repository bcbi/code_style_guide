
export function fetchData(data) {
  return({ type: 'CHANGE_DATA', data})
}s

export function changeError(data) {
  return({ type: 'CHANGE_ERROR', data})
}
