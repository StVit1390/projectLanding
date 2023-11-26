// MUI
import { styled } from '@mui/system'

export const Field = styled('div')`
    display: flex;
    flex-direction: column;
    background-color: ${({theme})=> theme.palette.background.custom2 };
    border-radius: 7px;
    padding: 16px 31px;
    position: relative;
`

export const Tittle = styled('div')`
    display: flex;
`
export const Number = styled('div')`
    display: flex;
`

export const Copy = styled('div')`
    position: absolute;
    width: 26px;
    height: 26px;
    right: 5%;
    top: 33%;
    cursor: pointer;
`