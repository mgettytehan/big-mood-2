import { MoodLogsDisplay } from './features/mood_logs/MoodLogsDisplay';
import { MoodscalesEditor } from './features/moodscales/MoodscalesEditor';

function App() {
  return (
    <div className="app">
      <header><div className="logo">bgm</div></header>
      <main>
        <div>Welcome, user.</div>
        <MoodscalesEditor />
      </main>
    </div>
  );
}

export default App;
