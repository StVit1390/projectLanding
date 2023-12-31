// Core
import React, { FC, useContext } from "react";

// Styles 
import * as S from './styles'

// MUI
import {Typography} from "@mui/material";

// Context
import { LocalContext } from "../../../app/page";


interface CardProps {
    id: number,
    quote: string,
    description: string,
    goal: number,
    img: string,
    waterMark: string,
    justify: boolean,
    btn: string
}

export const Card:FC<CardProps> = ({id, quote, description, goal, img, waterMark, justify, btn}) => {
    const { setPopUpIsVisible } = useContext(LocalContext)
    return (
        <S.Card justify={justify}>
            <S.ImgWrap>
                <S.Img src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${img}`}></S.Img>
                <Typography>{quote}</Typography>
                <S.ImgFooter>
                    <S.Goal variant="h5">Goal 000{goal}</S.Goal>
                    <S.DonateBtn variant='contained' color='primary' size="medium" onClick={()=> setPopUpIsVisible(true) }>{btn}</S.DonateBtn>
                </S.ImgFooter>
            </S.ImgWrap>
            <S.Content waterMark={waterMark} justify={justify}>
                <S.TypographyWrap>
                    <S.TypographyContent variant="h5">
                        {description}
                    </S.TypographyContent>
                </S.TypographyWrap>
            </S.Content>
        </S.Card>
    )
}