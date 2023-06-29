import { Fragment } from "react";

///PLACEHOLDER VALUE FOR TESTING
const moodlogs = []

const oneMoodLog = (moodLog = {}) => {
    return (
        <Fragment key={`${moodLog.created_at}-log`}>
        <tr>
            <th key="empty"></th>
            <th key="notes">Notes</th>
        </tr>
        <tr><td>Moodlogs go here</td></tr>
        </Fragment>
    );
}

const historyTable = (moodLogs = []) => {
    return(
        <div className="table-container">
        <table>
            <tbody>
            {moodLogs.map(oneMoodLog)}
            </tbody>
        </table>
        </div>
    );
}

const MoodLogsDisplay = () => {
    return (
        <div>
            <h2>Mood History</h2>
            {historyTable(moodlogs)}
        </div>
    );
};

export { MoodLogsDisplay };