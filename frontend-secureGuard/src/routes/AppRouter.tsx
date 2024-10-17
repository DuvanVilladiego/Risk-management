
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import App from "../App";
import { AuthForm } from '../pages';

const AppRouter = () => {
  return (
    <Router>
      <Routes>
        <Route path="/auth/register" element={<AuthForm isLogin={false}/>} />
        <Route path="/auth/login" element={<AuthForm isLogin/>} />
        <Route path="/check-code" element={<App/>} />
      </Routes>
    </Router>
  );
};

export default AppRouter;