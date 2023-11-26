// MUI
import { TextField, Typography } from '@mui/material'
import { styled } from '@mui/system'

export const SectionWrap = styled('div')`
    padding: 100px 15%;
    display: flex;
    flex-direction: column;
    align-items: center;
    @media screen and (max-width: 1400px) {
        padding: 50px 5%;
    }
    @media screen and (max-width: 1100px) {
        padding: 50px 2%;
    }
`

export const FormWrap = styled('div')`
    display: flex;
    flex-direction: column;
    background: ${({theme})=> theme.palette.background.custom1};
    border-radius: 17px;
    padding: 60px;
    margin-top: 50px;
    align-items: center;
    width: 100%;
    & button {
        margin-top: 50px;
    }
      @media screen and (max-width: 800px) {
        padding: 30px 10px;
    }
    
`

export const FormContent = styled('div')`
    display: flex;
    width: 100%;
    justify-content: space-between;
    flex-wrap: wrap;
    & :last-child{
        flex-basis: 100%;
    }
`

export const Label = styled('label')`
    display: flex;
    flex-direction: column;
    width: calc(33% - 10px);
    border-radius: 7px;
    margin-top: 50px;
    position: relative;
    & p {
        margin-bottom: 20px;
    }
     @media screen and (max-width: 800px) {
        width: 100%
    }
`

export const InputWrap = styled('div')`
    display: flex;
    flex-direction: column;
    
`

export const CustomField = styled(TextField)`
    background-color: ${({theme})=> theme.palette.background.default} ;
    border-radius: 13px;
    
    
    & div {
        -webkit-box-shadow: 0px 10px 15px -4px rgba(0,0,0,0.1);
        -moz-box-shadow: 0px 10px 15px -4px rgba(0,0,0,0.1);
        box-shadow: 0px 10px 15px -4px rgba(0,0,0,0.1);
        border-radius: 13px;
    }
    
    & fieldset {
        border-color: transparent;
        border-radius: 13px;

        &:hover {
           border-color: transparent; 
        }
        &:focus{
            border-radius: 13px;
        }
    }

    & input {
        height: 45px;
    }
`

export const Tittle = styled(Typography)`

`

export const FormTittle = styled(Typography)`
    @media screen and (max-width: 550px) {
        font-size: 1.8rem;
    }

    @media screen and (max-width: 450px) {
        font-size: 1.5rem;
    }
`

export const Err = styled('div')`
    color: red;
    position: absolute;
    bottom: -35px;
`