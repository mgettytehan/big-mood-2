import { useState, useReducer } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { addMoodscale } from './moodscalesSlice';
import { formReducer } from '../../Utils';

const MoodScaleCreator = () => {
    const [ newScaleData, setNewScaleData ] = useReducer(formReducer, {name: "", scale_type: "text", scaleItemNumber: "2"});
    
    const dispatch = useDispatch();

    const formatNewScaleItems = (scaleItemNumber = 2, scaleType = "text") => {
        if (scaleType === "text") {
            return Array.from({length: scaleItemNumber}, (val, index) => ({ index, alias: index+1 }));
        } else if (scaleType === "color") {
            return Array.from({length: scaleItemNumber}, (val, index) => ({ index, alias: "#000000" }));
        }
    };

    const handleChange = evnt => setNewScaleData({key: evnt.target.name, value: evnt.target.value});

    const handleSubmit = evnt => {
        evnt.preventDefault();
        let { scaleItemNumber, ...newScale } = newScaleData;
        dispatch(addMoodscale({...newScale, scale_items: formatNewScaleItems(scaleItemNumber, newScaleData.scale_type)}));
    };

    return (
        <form onSubmit={handleSubmit}>
            <label>Name:</label>
            <input type="text" name="name" value={newScaleData.name} onChange={handleChange} />
            <label>Type:</label>
            <select name="scale_type" value={newScaleData.scale_type} onChange={handleChange}>
                <option value="text">Words/Numbers</option>
                <option value="color">Colors</option>
            </select>
            <label>Number of items (2-15):</label>
            <input type="number" name="scaleItemNumber" min="2" max="15" value={newScaleData.scaleItemNumber} onChange={handleChange}/>
            <input type="submit" value="Add Scale" />
        </form>
    );
};

export const MoodscalesEditor = () => {
    //id of scale currently open for editing
    const [editOpen, setEditOpen] = useState(-1);

    console.log(useSelector(state => state.moodscales));

    return (
        <div>
            <h2>Edit Scales</h2>
            <p>"You have no scales. Please add some to get started."</p>
            <hr />
            <h2>Add New Scale</h2>
            <MoodScaleCreator />
        </div>
    );
};