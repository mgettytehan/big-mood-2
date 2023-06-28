import { configureStore } from '@reduxjs/toolkit';
import moodLogsReducer from '../features/mood_logs/moodLogsSlice';
import moodScalesReducer from '../features/moodscales/moodscalesSlice';

export default configureStore({
    reducer: {
        moodLogs: moodLogsReducer,
        moodscales: moodScalesReducer
    }
});