import { MoodLogsDisplay } from './features/moodlogs/MoodLogsDisplay';

function App() {
  return (
    <div className="app">
      <header><div className="logo">bgm</div></header>
      <main>
        <div>Welcome, user.</div>
        <MoodLogsDisplay />
      </main>
    </div>
  );
}

export default App;
