// Core
import React from "react";

// MUI
import { styled } from '@mui/system'
import { Button, Typography } from "@mui/material";

// Theme
import { palette } from '../../../theme/theme'


interface CardProps {
    justify: boolean
}

export const Card = styled('div') <CardProps>`
    display: flex;
    width: 100%;
    border-radius: 10px;
    padding: 20px;
    background-color: ${(props)=> props.theme.palette.background.custom1};
    flex-direction: ${({ justify }) =>  justify ? 'row-reverse' : 'row' };
    overflow: hidden;
    @media screen and (max-width: 650px){
        flex-direction: column;
    }
`

export const ImgWrap = styled('div')`
    width: 35%;
    background-color: ${(props)=> props.theme.palette.common.white};
    padding: 20px;
    border-radius: 10px;
     @media screen and (max-width: 1100px){
        width: 40%;
        padding: 20px 10px;
    }
    @media screen and (max-width: 650px){
       width: 100%;
    }
`

export const Img = styled('img')`
    width: 100%;
    margin-bottom: 20px;
`

export const ImgFooter = styled('div')`
    display: flex;
    width: 100%;
    padding-top: 20px;
    justify-content: space-between;
    align-items: center;
`

interface ContentProps {
    waterMark: string;
    justify: boolean; 
}

export const Content = styled('div') <ContentProps>`
    width: 65%;
    padding: 20px 100px;
    display: flex;
    align-items: center;
    position: relative;
    &::before {
        content: '';
        background-image: url(http://localhost:1337${props => props.waterMark});
        position: absolute;
        bottom: 5%;
        right: ${({ justify }) => justify ? '65%' : '5%' };
        height: 150px;
        width: 150px;
        background-position: center;
        background-size: contain;
        @media screen and (max-width: 650px){
        right: 5%;
        }
    }
    @media screen and (max-width: 1100px){
        width: 60%;
        padding: 20px 30px;
    }
    @media screen and (max-width: 650px){
       width: 100%;
    }

`

export const TypographyWrap = styled('div')`
    display: flex;
    position: relative;
    padding: 20px 0;
    align-items: center;
    
    &::before {
        content: '';
        height: 100%;
        width: 6px;
        border-radius: 10px;
        background: ${({theme})=>theme.palette.primary.main};
        position: absolute;
        left: 0;
    }
`
export const TypographyContent = styled(Typography)`
    padding-left: 10%;
`

export const Goal = styled(Typography)`

`

export const DonateBtn = styled(Button)`
    @media screen and (max-width: 900px){
        max-width: 50%;
    }
`