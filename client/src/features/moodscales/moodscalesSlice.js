import { createSlice } from "@reduxjs/toolkit";

export const moodscalesSlice = createSlice({
    name: 'moodscales',
    initialState: [],
    reducers: {
        addMoodscale: (state, action) => [...state, action.payload],
        removeMoodscale: (state, action) => state.filter(moodscale => moodscale.id !== action.payload.id)
    }
});

export const { addMoodscale, removeMoodscale } = moodscalesSlice.actions;
export default moodscalesSlice.reducer;