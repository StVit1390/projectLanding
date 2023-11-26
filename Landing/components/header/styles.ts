// MUI
import { styled } from '@mui/system'
import { Box, Button } from '@mui/material'

export const Header = styled('div')`
    display: flex;
    align-items: center;
    height: 125px;
    background: white;
    padding: 0 15%;
    justify-content: space-between;
    @media screen and (max-width: 1400px) {
        padding: 0 5%;
    }

    @media screen and (max-width: 1100px) {
        padding: 0 2%;
        height: 100px;
    }

    @media screen and (max-width: 650px) {
       height: 83px;
    }
`

export const LogoWrap = styled('div')`
    display: flex;
    position: relative;
    width: 230px;
    height: 120px;
    @media screen and (max-width: 1100px) {
        width: 115px;
        height: 60px;
    }
`


export const Logo  = styled('img')`
    position: absolute;
    top: 5px;
    background-color: ${({theme})=>theme.palette.common.white};
    border: 10px solid ${({theme})=>theme.palette.common.white};
    border-radius: 10px;
    @media screen and (max-width: 1100px) {
       top: 0;
    }
`

export const NavMenu = styled('div')`
    display: flex;
    align-items: center;
    @media screen and (max-width: 650px) {
       display: none;
    }
`

export const Btn = styled('a')`
    text-decoration: none;
    line-height: 18px;
    font-size: 1em;
    font-weight: 500;
    color: ${({theme})=>theme.palette.common.black};
    position: relative;
    margin: 0 15px;
    cursor: pointer;
     @media screen and (max-width: 1100px) {
       font-size: 0.75em;
       margin: 0 5px;
    }

    &:hover {
        color: ${({ theme }) => theme.palette.primary.main};
        &:hover::after {
            content: '';
            width: 25px;
            height: 2px;
            background: ${({ theme }) => theme.palette.primary.main};
            position: absolute;
            bottom: -5px;
            left: 0;
            border-radius: 10px;
        }
    }
`

export const SupportUsWrap = styled('div')`
    display: flex;
    align-items: center;
    @media screen and (max-width: 650px) {
       display: none;
    }
`

export const SupportUs = styled(Button)`
     @media screen and (max-width: 1100px) {
       width: 150px;
    }
`

export const BurgerWrap = styled(Box)`
    width: 51px;
    height: 51px;
    border-radius: 7px;
    background-color: ${({theme})=>theme.palette.primary.main} ;
    display: none;
    cursor: pointer;
    padding: 15px;
    position: relative;

    @media screen and (max-width: 650px) {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: end;
    }
`

interface BurgerItemProps {
    burger: boolean;
}

export const BurgerOne = styled('div')<BurgerItemProps>`
    width: 23px;
    height: 2px;
    border-radius: 5px;
    background-color: ${({theme})=> theme.palette.common.white};
    position: absolute;
    top: ${({ burger }) => burger ? 'calc(50% - 1px)' : '15px'};
    transform: ${({ burger }) => burger ? 'rotate(-45deg)' : 'rotate(0deg)'};
    transition: 0.5s;
`

export const BurgerTwo = styled('div')<BurgerItemProps>`
    width: 12px;
    height: 2px;
    border-radius: 5px;
    background-color: ${({theme})=> theme.palette.common.white};
    display: ${({ burger }) => burger ? 'none' : 'flex'};
    position: absolute;
    top: calc(50% - 1px);
    
`

export const BurgerThree = styled('div')<BurgerItemProps>`
    width: 23px;
    height: 2px;
    border-radius: 5px;
    background-color: ${({theme})=> theme.palette.common.white};
    position: absolute;
    bottom: 15px;
    bottom: ${({ burger }) => burger ? 'calc(50% - 1px)' : '15px'};
    transform: ${({ burger }) => burger ? 'rotate(45deg)' : 'rotate(0deg)'};
    transition: 0.5s;
`
