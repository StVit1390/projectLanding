// Core
import React, { FC, useState, useEffect, useContext } from "react";

// Tools
import axios from "axios";

// Styles
import * as S from './styles'

// MUI
import { Typography } from "@mui/material";

// View
import { AccountField } from './components/index';

// Context
import { LocalContext } from '../../app/page';

export const SeventhSection:FC = () => {

    const [data, setData] = useState<any>()

    const { local } = useContext(LocalContext)
    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/seventh-section?populate=*&locale=${local}`).then((res: any) => {
            setData(res.data.data.attributes);
        })
    }, [local])

    return (
        <S.SectionWrap id="seventhSection" bg={data && data.background.data.attributes.url} icon={data && data.logo.data.attributes.url}>
            <S.Contacts>
                <Typography variant="h2">{data && data.tittle}</Typography>
                {data && data.phones.data.map((el:any)=>{
                    return (
                        <S.PhoneWrap key={el.id}>
                            <Typography variant="h5"  key={el.id}>+{el.attributes.phone.toString().replace(/(\d{2})(\d{3})(\d{3})(\d{3})/, "$1 $2 $3 $4")}</Typography>
                        </S.PhoneWrap>
                    )
                })}
                <S.EmailWrap>
                    <Typography variant="h5">{data && data.email.data.attributes.email}</Typography>
                </S.EmailWrap>
                <S.MapHiden>
                    <S.MapDummyHiden src="./map.svg" />
                </S.MapHiden>
            </S.Contacts>
            <S.Map>
                <S.MapDummy src="./map.svg" />
            </S.Map>
            <S.Accounts>
                <S.BannerBanksWrap>
                    <Typography variant="h4">Bank details:</Typography>
                    <S.Fields>
                        {data && data.bank_accounts.data.map((el: any) => {
                            return <AccountField key={el.id} name={el.attributes.name} acc={el.attributes.address} />
                        })}
                    </S.Fields>
                </S.BannerBanksWrap>
            </S.Accounts>
        </S.SectionWrap>
    )
}