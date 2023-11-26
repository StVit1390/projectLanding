// Core
import React, { FC, useState, useEffect, useContext } from "react";

// Tools
import axios from "axios";

// Styles
import * as S from './styles'
import { Button, Typography } from "@mui/material";

// View
import { AccountField } from './components/index';

// Locale
import { LocalContext } from '../../app/page'

export const ThirdSection:FC = () => {

    const [data, setData] = useState<any>()

    const { local } = useContext(LocalContext)

    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/third-section/?populate=*&locale=${local}`).then((res: any) => {
            setData(res.data.data);
        })
    }, [local])

    return (
        <S.SectionWrap  bgImg={data && data.attributes.coverImage.data.attributes.url}>
            <S.BannerInfo>
                <S.BannerInfoWrap>
                    <S.Tittle variant="h1">{data && data.attributes.tittle}</S.Tittle>
                    <S.Description variant="h5">{data && data.attributes.description}</S.Description>
                    <S.DonateBtn variant="outlined">{data && data.attributes.btn}</S.DonateBtn>
                </S.BannerInfoWrap>
            </S.BannerInfo>
            <S.BannerBanks>
                <S.BannerBanksWrap>
                    <Typography variant="h4">Bank details:</Typography>
                    <S.Fields>
                        {data && data.attributes.bank_accounts.data.map((el:any)=>{
                            return <AccountField key={el.id} name={el.attributes.name} acc={el.attributes.address}/>
                        })}
                    </S.Fields>
                </S.BannerBanksWrap>
            </S.BannerBanks>
        </S.SectionWrap>
    )
}
