// Core
import React, {FC, useContext} from 'react';

// Styles
import * as S from './styles'

// Context
import { LocalContext } from '../../app/page';


export const PopUp: FC<any> = ({children}) => {   //to do type for children

    const { setPopUpIsVisible } = useContext(LocalContext)
    return (
        <S.PopUpWrap>
            <S.PopUpContent>
                <S.CloseBtn onClick={()=> setPopUpIsVisible(false)}>&#215;</S.CloseBtn>
                {children}
            </S.PopUpContent>
        </S.PopUpWrap>
    )
}