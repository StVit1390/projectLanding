// Core
import React, { FC } from "react";

// Styles
import * as S from './style'

// MUI
import { Typography } from "@mui/material";

interface CardProps {
    tittle: string,
    description: string,
    icon: string,
}




export const Card: FC<CardProps> = ({tittle,description,icon}) => {
    
    return (
        <S.Card>
            <S.IconWrap>
                <S.Icon src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${icon}`} />
            </S.IconWrap>
            <Typography variant="h4">{tittle}</Typography>
            <Typography variant="h5">{description}</Typography>
        </S.Card>
    )
}