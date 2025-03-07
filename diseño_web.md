https://www.figma.com/design/hxSPtQuAOS4sbOV2Pt6VvR/ProyectoEnClase?node-id=0-1&t=vzapndZvJ9hq02TY-1
cd IdeaProjects
mkdir Practica5
cd Practica5
npm init react-app my-app
cd my-app
npm install @material-ui/core
npm install @mui/material @emotion/react @emotion/styled
npm start




import './App.css';
import {Box, Container, Link, Typography} from "@mui/material";

function Copyright() {
    return (
        <Typography sx={{mb: 2}}>
            { 'Copyright ' }
            <Link href="https://github.com">
                {' Git '}
            </Link>
            { new Date().getFullYear() }
        </Typography>);
}

export default function MyApp() {
    return (
        <Container maxWidth="sm">
            <Box sx={{my: 4}}>
                <Typography variant="h4" component="h1" sx={{mb: 2}}>
                    Mi primera App con React y Material UI
                </Typography>
                <Copyright/>
            </Box>
        </Container>
    );
}
