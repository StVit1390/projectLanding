// Core
import React, { FC, useContext, useEffect, useState } from "react";

// Styles
import * as S from './styles'

// Tools
import axios from 'axios';

// Context
import { LocalContext } from '../../app/page';

// MUI
import ChatOutlinedIcon from '@mui/icons-material/ChatOutlined';

export const MobileMenu: FC = () => {

    const [data, setData] = useState({
        
        items: [{ id: null, attributes: { link: '', item: 'sample' } }],
        support: ''
    })

    

    const { local, burger, setBurger } = useContext(LocalContext)


    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/head/?populate=*&locale=${local}`).then((res: any) => {
            setData({
                items: res.data.data.attributes.menu_items.data,
                support: res.data.data.attributes.support,
            })
        })
    }, [local])

    return (
        <S.SectionWrap>
            <S.NavMenu>
                {data && data.items && data.items.map((item) => {
                    return <S.Btn onClick={()=> setBurger(!burger)} key={item.id} href={`#${item.attributes.link}`}>{item.attributes.item}</S.Btn>
                })}
            </S.NavMenu>
            <S.SupportUs onClick={() => setBurger(!burger)} href='#eighthSection' variant='contained' color='primary' size="large" endIcon={<ChatOutlinedIcon />}>{data.support}</S.SupportUs>
        </S.SectionWrap>
    )
}