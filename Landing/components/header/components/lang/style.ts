// Core
import styled from 'styled-components'

// MUI
import { FormControl, MenuItem } from "@mui/material";
import Select from '@mui/material/Select';

// Colors
import {palette} from '../../../../theme/theme'

export const CustomFormControl = styled(FormControl)`
   
`

export const CustomSelect = styled(Select)`
    min-height: 63px;
    min-width: 80px;
    margin-right: 20px;
    background: ${palette.background.alternate};
    outline: ${palette.background.alternate};
      @media screen and (max-width: 1100px) {
       min-width: 70px;
       margin-right: 10px;
    }
    & fieldset {
        border-color: transparent;
    }
    
`