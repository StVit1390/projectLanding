// Core
import React, {FC, useContext, useEffect, useState} from 'react';

// Styles 
import * as S from './styles'

// View
import { Lang } from './components/lang';

// Tools
import axios from 'axios';

// MUI
import ChatOutlinedIcon from '@mui/icons-material/ChatOutlined';

// Context
import { LocalContext } from '../../app/page';

export const Header:FC = () => {

    const [data, setData] = useState({
        logo: '',
        items: [{id: null, attributes:{link:'', item:'sample'}}],
        support: ''
    })

    const {local, burger, setBurger} = useContext(LocalContext)

    useEffect(()=>{
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/head/?populate=*&locale=${local}`).then((res:any) => {
            
            setData({
                logo: res.data.data.attributes.logo.data.attributes.url,
                items: res.data.data.attributes.menu_items.data,
                support: res.data.data.attributes.support,
            })
        })
    },[local])

    return (
        <S.Header id='header'>
            <S.LogoWrap>
                <S.Logo src={`http://localhost:1337${data && data.logo && data.logo}`}></S.Logo>
            </S.LogoWrap>
            <S.NavMenu>
                {data && data.items && data.items.map((item)=>{
                    return <S.Btn key={item.id} href={`#${item.attributes.link}`}>{item.attributes.item}</S.Btn>
                })}
            </S.NavMenu>
            <S.SupportUsWrap>
                <Lang />
                <S.SupportUs href='#eighthSection' variant='contained' color='primary' size="large" endIcon={<ChatOutlinedIcon />}>{data.support}</S.SupportUs>
            </S.SupportUsWrap>
            <S.BurgerWrap onClick={()=> setBurger(!burger)}>
                <S.BurgerOne burger={burger} />
                <S.BurgerTwo burger={burger}/>
                <S.BurgerThree burger={burger} />
            </S.BurgerWrap>
        </S.Header>
    )
}

