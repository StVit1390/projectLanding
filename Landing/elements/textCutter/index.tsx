// Core
import React, {FC, useEffect, useState, useContext} from 'react';

// View
import * as S from './styles'

// Locale
import { LocalContext } from '../../app/page'



interface TextCutterT {
    children: string
}

export const TextCutter:FC<TextCutterT>= ({children}) => {
    const [isOpen, setIsOpen] = useState(false)

    useEffect(()=>{
        if (children?.length <=400) {
            setIsOpen(true)
        }
    }, [children])

    const { local } = useContext(LocalContext)
   
    
    const ButtonLocale = () => {
        let btnName 
        enum Locale {
            en = "read more",
            pl = "czytaj więcej",
            uk = "читати далi"
        } 


        switch(local){
            case 'en': btnName = Locale.en;
            break;
            case 'pl': btnName = Locale.pl;
            break;
            case 'uk': btnName = Locale.uk
            break;
            default: btnName = Locale.en

        }
       
        return btnName
    }

    function truncateText(text: string, maxLength: number) {
        if (text.length <= maxLength) {
            return text;
        }

        let truncatedText = text.substring(0, maxLength);
        const lastSpaceIndex = truncatedText.lastIndexOf(' ');

        if (lastSpaceIndex !== -1) {
            truncatedText = truncatedText.substring(0, lastSpaceIndex);
        }

        return truncatedText;
    }
    
    
    return (
        <S.Container>
            {!isOpen && children?.length > 400 ? truncateText(children, 400) : children}
            {isOpen && children}
            <S.Button visible={isOpen} onClick={()=> setIsOpen(true)}>{ButtonLocale()}</S.Button>  
        </S.Container>
    )
}

