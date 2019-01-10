import Immutable from 'seamless-immutable';

const initialState = Immutable({
  array: [],
  string: "",
  object: undefined,
  boolean: false
});


export default function reduce(state = initialState, action = {}) {

  switch (action.type) {
    case 'CHANGE_DATA':
      return state.merge({
        array: action.data
      });
    case 'CHANGE_STRING':
      return state.merge({
        string: action.data
      });
    default:
      return state;
  }
}

export function getData(state) {
  return state.array;
}

export function getString(state) {
  return state.string;
}
