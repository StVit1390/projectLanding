// Core
import React, { FC, useState, useEffect, useContext } from "react";

// Tools
import axios from "axios";

// Styles
import * as S from './styles'

// MUI
import { Typography } from "@mui/material";

// Locale
import { LocalContext } from '../../app/page'

export const SixthSection:FC = () => {

    const [data, setData] = useState<any>()
    const { local } = useContext(LocalContext)

    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/sixth-section?populate=partners.icon&locale=${local}`).then((res: any) => {
            
            setData(res.data.data.attributes);
        })
    }, [local])

    return (
        <S.SectionWrap id="sixthSection">
            <Typography variant="h2">{data?.name}</Typography>
            <S.PartnersWrap>
                {
                    data?.partners.data.map((el: any) => {
                        return <S.PartnerIcon key={el.id} src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${el.attributes?.icon.data?.attributes.url}`}></S.PartnerIcon>
                    })
                }
            </S.PartnersWrap>
        </S.SectionWrap>
    )
}