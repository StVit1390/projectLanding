// MUI
import { Typography } from '@mui/material'
import { styled } from '@mui/system'

export const SectionWrap = styled('section')`
    padding: 0 15%;
    display: flex;
    flex-direction: column;
    align-items: center;
    & h2{
        margin: 50px 0 20px 0;
    }

    & h5 {
        margin-bottom: 15px;
    }

    @media screen and (max-width: 1400px) {
        padding: 50px 5%;
    }
    @media screen and (max-width: 1100px) {
        padding: 50px 2%;
    }
`

export const Tittle = styled(Typography)`
    @media screen and (max-width: 750px) {
            text-align: center;
        }
`

export const Quote = styled(Typography)`
    @media screen and (max-width: 750px) {
            text-align: center;
        }
`

export const Cards = styled('div')`
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
`