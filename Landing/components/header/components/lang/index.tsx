// Core
import React, {FC, useContext, useState} from "react";

// Style
import * as S from './style'

// MUI
import { MenuItem } from "@mui/material";
import  { SelectChangeEvent } from '@mui/material/Select';

// Context
import { LocalContext } from "../../../../app/page";

export const Lang:FC = () => {

    const {local, setLocal} = useContext(LocalContext)
    const handleChange = (event: SelectChangeEvent) => {
        setLocal(event.target.value);
    };
    
    return(
    
        <S.CustomFormControl >
            <S.CustomSelect
            sx={{borderRadius: '7px', outline: 'none'}}
            value={local}
            onChange={handleChange}
            displayEmpty
            inputProps={{ 'aria-label': 'Without label' }}
            >
                <MenuItem value="en">EN</MenuItem>
                <MenuItem value="pl">PL</MenuItem>
                <MenuItem value="uk">UA</MenuItem>
            </S.CustomSelect>
        </S.CustomFormControl>
        
    )
}