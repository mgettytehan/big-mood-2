const formReducer = (state, {key, value, index, prop}) => {
    const newState = {...state};
    if (index && prop)
        newState[key][index][prop] = value;
    else 
        newState[key] = value;
    return newState;
};

export { formReducer };