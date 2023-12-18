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

        switch(local){
            case 'en': btnName = "read more";
            break;
            case 'pl': btnName = 'czytaj więcej';
            break;
            case 'uk': btnName = 'читати далi'
            break;
            default: btnName = "read more"

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

