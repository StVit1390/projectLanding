// MUI
import { styled } from '@mui/system';

export const Container = styled('div')`
    & h5 {
        display: contents;
    }
`

interface ButtonProps {
    visible: boolean
}

export const Button = styled('button')<ButtonProps>`
    width: fit-content;
    margin-top: 10px; 
    outline: none;
    border: none;
    background: none;
    margin-left: 10px;
    color: ${({theme})=> theme.palette.primary.main};
    display: ${({visible})=> visible ? 'none' : 'inline'} ;
`