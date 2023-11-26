// Core
import React, { FC, useState, useEffect, useContext } from "react";

// Tools
import axios from "axios";

// Styles
import * as S from './style'

// View
import { Card } from "../fifthSection/components/Card";

// Locale
import { LocalContext } from '../../app/page'

export const FifthSection:FC = () => {

    const [data, setData] = useState<any>()
    const { local } = useContext(LocalContext)

    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/fifth-section?populate=cards.icon&locale=${local}`).then((res: any) => {       
            setData(res.data.data);
        })
    }, [local])

    return (
        <S.SectionWrap>
            <S.Tittle variant="h2">{data && data.attributes.name}</S.Tittle>
            <S.Quote variant="h5">{data && data.attributes.quote}</S.Quote>
            <S.Quote variant="h5">{data && data.attributes.quote2}</S.Quote>
            <S.Cards>
                {
                    data && data.attributes.cards.data.map((el:any)=>{
                        
                        return (
                            <Card 
                                key={el.id} 
                                tittle={el.attributes.tittle}
                                description={el.attributes.description}
                                icon={el.attributes.icon.data.attributes.url}
                            />
                        )
                    })  
                }
            </S.Cards>
        </S.SectionWrap>
    )
}