import { configureStore } from '@reduxjs/toolkit';
import moodLogsReducer from '../features/mood_logs/moodLogsSlice'

export default configureStore({
    reducer: {
        moodLogs: moodLogsReducer
    }
});