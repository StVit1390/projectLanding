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
                <S.Icon src={`http://localhost:1337${icon}`} />
            </S.IconWrap>
            <Typography variant="h4">{tittle}</Typography>
            <Typography variant="h5">{description}</Typography>
        </S.Card>
    )
}