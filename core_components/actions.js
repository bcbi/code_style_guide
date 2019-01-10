
export function fetchData(data) {
  return({ type: 'CHANGE_DATA', data})
}

export function changeString(data) {
  return({ type: 'CHANGE_STRING', data})
}
