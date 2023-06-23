import logo from './logo.svg';
import { MoodLogDisplay } from './features/moodlog/MoodLogDisplay';

function App() {
  return (
    <div className="app">
      <header><div className="logo">bgm</div></header>
      <main>
        <div>Welcome, user.</div>
        <MoodLogDisplay />
      </main>
    </div>
  );
}

export default App;
