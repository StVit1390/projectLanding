// MUI
import { styled } from '@mui/system'
import { Button, Typography } from '@mui/material'

// Color
import {palette} from '../../theme/theme'
;

interface SectionWrapProps {
    bgImg: string; 
    img: string
}

export const SectionWrap = styled('section')<SectionWrapProps>`
    display: flex;
    background: ${({theme})=> theme.palette.background.custom1};
    height: 673px;
    background-image: url(${({bgImg})=>bgImg});
    background-repeat: no-repeat;
    padding: 0 15%;
    position: relative;
    overflow: hidden;

    &::before {
        content: '';
        height: 670px;
        width: 775px;
        position: absolute;
        right: 5%;
        bottom: 0;
        background-size: cover;
        background-repeat: no-repeat;
        background-image: url(${({img})=>img});
        @media screen and (max-width: 900px) {
            height: 550px;
            width: 635px;
            right: auto ;
        }
    }

    @media screen and (max-width: 1400px) {
        padding: 0 5%;
    }

    @media screen and (max-width: 1100px) {
        padding: 0 1%;
        display: flex;
        justify-content: center;
        height: 1000px;
        background-size: cover;
    }

    @media screen and (max-width: 900px) {
        height: 850px ;
    }

    @media screen and (max-width: 550px) {
        height: 900px ;
    }

`

export const LeftSide = styled('div')`
    display: flex;
    position: relative;
    align-items: center;
    justify-content: flex-end;

    @media screen and (max-width: 1100px) {
        align-items: baseline ;
        margin-top: 33px;
    }
`

export const BannerWrap = styled('div')`
    display: flex;
    padding: 20px;
    border-radius: 22px;
    background: ${palette.common.white};
    align-items: center;
    justify-content: center;
    max-width: 680px;
    
`

export const BannerContent = styled('div')`
    display: flex;
    flex-direction: column;
    border: 1px dashed ${palette.primary.main};
    border-radius: 10px;
    padding: 28px;
    & > *:not(:last-child) {
    margin-bottom: 20px;
    }

    @media screen and (max-width: 600px) {
        align-items: center;  
        text-align: center ;
    }
`

export const Tittle = styled(Typography)`
    color: ${({theme})=> theme.palette.text.alternate};
    line-height: 110%;
    font-weight: 700;

    @media screen and (max-width: 700px) {
        font-size: 50px;
    }

    @media screen and (max-width: 550px) {
        font-size: 40px;
    }

    @media screen and (max-width: 450px) {
        font-size: 35px;
    }
`
export const Content = styled(Typography)`
    color: ${({ theme }) => theme.palette.text.alternate};
    line-height: 140%;
    font-weight: 500;

    @media screen and (max-width: 700px) {
        font-size: 1.2rem;
    }

    @media screen and (max-width: 550px) {
        font-size: 1.1rem;
    }

`

export const Help = styled('a')`
    cursor: pointer;
    text-decoration: none;
    background-color: ${palette.primary.main};
    padding: 22px 50px;
    width: fit-content;
    color: ${palette.common.white};
    border-radius: 10px;
    margin-top: 30px;
`

export const Btn = styled(Button)`
    background-color: ${({theme})=> theme.palette.primary} !important;
`
