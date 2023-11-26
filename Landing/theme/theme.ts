// MUI
import { createTheme } from "@mui/material";

export const palette = {
        common: {
            black: '#000',
            white: '#fff',

        },
        background: {
            default: '#F6F6F6',
            paper: '#F1F1F1',
            main: '#EBEBEB',
            alternate: '#E2E2E2',
        },

        primary: {
            main: '#10AFAB',
        },
        secondary: {
            main: '#fff'
        },
        text: {
            primary: '#000',
            alternate: '#2e2e2e',
        },
}

const mainTheme = createTheme({
  palette: {
    text: {
      primary: '#000',
      secondary: '#2e2e2e',
    },
    background: {
      default: '#fff',
      paper: '#fff',
      body: '#fff',
      custom1: '#f6f6f6',
      custom2: '#f1f1f1',
      custom3: '#ebebeb',
      custom4: '#e2e2e2',
    },
    primary: {
      main: '#10afab',
    },
    common: {
      black: '#000',
      white: '#fff',
    },
  },
  components: {
    MuiButton: {
      styleOverrides: {
        root: {
          color: '#fff',
          height: '63px',
          width: '207px',
          borderRadius: '7px',
          justifyContent: 'space-around',
          textTransform: 'none',
          background: '#10afab',
        },
        sizeLarge: {
          width: '207px',
        },
        outlined: {
          color: '#10afab',
          background: '#fff',
          '&:hover': {
            background: '#fff',
          },
        },
      },
    },
  },
  typography: {
    h1: {
      fontSize: '4.5rem',
      fontWeight: 600,
    },
    h2: {
      fontSize: '3rem',
      fontWeight: 600,
    },
    h3: {
      fontSize: '2.25rem',
      fontWeight: 600,
    },
    h4: {
      fontSize: '1.5rem',
      fontWeight: 600,
    },
    h5: {
      fontSize: '1.25rem',
      fontWeight: 500,
    },
    h6: {
      fontSize: '1rem',
      fontWeight: 500,
    },
    body1: {
      fontSize: '1rem',
    },
    body2: {
      fontSize: '0.875rem',
    },
    subtitle1: {
      fontSize: '1rem',
    },
    subtitle2: {
      fontSize: '0.75rem',
    },
  },
});

export default mainTheme;