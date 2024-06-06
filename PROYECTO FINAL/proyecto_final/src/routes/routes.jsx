import React from 'react';
import { Route, Routes } from 'react-router-dom';

import Profile from '../Screens/Profile/Profile';
import HomePage from '../Screens/HomePage/HomePage';
import Login from '../Screens/Login/Login';

const AppRoutes = () => {
    return (
        <Routes>
            <Route exact path="/" element={<HomePage />} />
            <Route path="/profile" element={<Profile />} />
            <Route path="/login" element={<Login />} />
        </Routes>
    );
};

export default AppRoutes;