// MUI
import { styled } from '@mui/system'

export const Card = styled('div')`
    display: flex;
    flex-direction: column;
    width: calc(20% - 20px);
    justify-content: center;
    margin: 10px;
    padding: 40px;
    align-items: center;
    text-align: center;
    & > *:not(:last-child) {
    margin-bottom: 20px ;
    }
    @media screen and (max-width: 1050px) {
        padding: 0;
    }
    @media screen and (max-width: 700px) {
        width: calc(25% - 20px);
    }
    @media screen and (max-width: 550px) {
        width: calc(33% - 20px);
    }
    @media screen and (max-width: 450px) {
        width: calc(50% - 20px);
    }
`

export const Icon = styled('img')`

`

export const IconWrap = styled('div')`
    background: ${({theme})=> theme.palette.background.custom1};
    padding: 20px;
    border-radius: 11px;
    width: fit-content;
`