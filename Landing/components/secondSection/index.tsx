// Core
import React, { FC, useEffect, useState, useContext } from 'react'

// Tools
import axios from 'axios'

// View
import { Card } from './components'

// Styles
import * as S from './styles'

// Locale
import { LocalContext } from '../../app/page'

export const SecondSection:FC = () => {
   
    const [data, setData] = useState()

    const { local } = useContext(LocalContext)

    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/second-section/?populate=projects&populate=projects.img&populate=projects.waterMark&=*&locale=${local}`).then((res: any) => {
            setData(res.data.data.attributes);
        })
    }, [local])
    
    return (
        <S.SecondSectionWrap id="secondSection">
            <S.Tittle variant='h2'>{data && data.tittle}</S.Tittle>
            <S.Cards>
                {data && data.projects.data.map((el: any, i:number) => {
                    if (i % 2 === 0){
                        return <Card
                            justify={false}
                            key={el.id}
                            id={el.id}
                            quote={el.attributes.quote}
                            description={el.attributes.description}
                            goal={el.attributes.goal}
                            img={el.attributes.img.data.attributes.url}
                            waterMark={el.attributes.waterMark.data.attributes.url} 
                            btn={el.attributes.btn}/>
                    }else{
                        return <Card
                            justify={true}
                            key={el.id}
                            id={el.id}
                            quote={el.attributes.quote}
                            description={el.attributes.description}
                            goal={el.attributes.goal}
                            img={el.attributes.img.data.attributes.url}
                            waterMark={el.attributes.waterMark.data.attributes.url}
                            btn={el.attributes.btn} />
                    }
                    
                })}
            </S.Cards>
        </S.SecondSectionWrap>
    )
}