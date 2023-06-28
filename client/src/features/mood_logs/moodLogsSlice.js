import { createSlice } from "@reduxjs/toolkit";

export const moodLogsSlice = createSlice({
    name: 'moodLogs',
    initialState: [],
    reducers: {
        createMoodLog: (state, action) => [...state, action.payload],
        removeMoodLog: (state, action) => state.filter(moodLog => moodLog.id !== action.payload.id)
    }
});

export const { createMoodLog, removeMoodLog } = moodLogsSlice.actions;
export default moodLogsSlice.reducer;