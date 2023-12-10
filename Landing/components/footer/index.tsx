// Core
import React, { FC, useState, useEffect, useContext } from "react";

// Tools
import axios from "axios";

// Styles
import * as S from './styles'

// MUI
import { Typography } from "@mui/material";
import ExpandLessIcon from '@mui/icons-material//ExpandLess';

// Context
import { LocalContext } from '../../app/page';


export const Footer:FC = () => {

    const [data, setData] = useState<any>()
    const { local } = useContext(LocalContext)
    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/footer-section?populate=*&locale=${local}`).then((res: any) => {
            
            setData(res.data.data.attributes);
        })
    }, [local])

    const scrollToTop = () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth', // Add smooth scrolling behavior
        });
    };

    return (
        <S.SectionWrap bgImg={data?.background.data.attributes.url}>
            <S.Logo src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${data?.logo.data.attributes.url}`}></S.Logo>  
            {/* ${process.env.NEXT_PUBLIC_STRAPI_URL} // change link */}
            
            <S.Nav>
                {data?.menu_items.data.map((el:any)=>{
                    return (
                        <S.Btn key={el.id} href={`#${el.attributes.link}`}>
                            <Typography variant="h5">{el.attributes.item}</Typography>
                        </S.Btn>
                    )
                })}
               
            </S.Nav>
            <S.Contacts>
                <Typography variant="h5">{data?.contacts_tittle}:</Typography>
                {data?.phones.data.map((el:any)=>{
                    return(
                        <S.Contact key={el.id}>
                            <Typography variant="h5">+ {el.attributes.phone.toString().replace(/(\d{2})(\d{3})(\d{3})(\d{3})/, "$1 $2 $3 $4")}</Typography>
                        </S.Contact>
                    )
                })}
                <S.Email>
                    <Typography variant="h5">{data?.email.data.attributes.email}</Typography>
                </S.Email>
            </S.Contacts>
            <S.SocialMedia>
                <Typography variant="h5">{data?.social_tittle}:</Typography>
                <S.Links>
                    <S.Link href="#">
                        <S.SocialIcon src="/fb.svg"/>
                        <Typography variant="h5">Foundation.new</Typography>
                    </S.Link>
                    <S.Link href="#">
                        <S.SocialIcon src="/tw.svg" />
                        <Typography variant="h5">Foundation.new</Typography>
                    </S.Link>
                    <S.Link href="#">
                        <S.SocialIcon src="/inst.svg" />
                        <Typography variant="h5">Foundation.new</Typography>
                    </S.Link>
                </S.Links>
            </S.SocialMedia>
            <S.UpBtn
                
                variant="outlined"
                size="small"
                onClick={scrollToTop}
                endIcon={<ExpandLessIcon />}
               ></S.UpBtn>
            
        </S.SectionWrap>
    )
}