import { RECEIVE_SEARCH } from '../actions/search_action';

const searchReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_SEARCH:
      return Object.assign({}, state, action.search)
    default:
      return state;
  }
}

export default searchReducer;