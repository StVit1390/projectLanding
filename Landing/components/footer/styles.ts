// MUI
import { Button } from '@mui/material'
import { styled } from '@mui/system'

interface SectionWrapProps {
    bgImg:string,
}

export const SectionWrap = styled('section') <SectionWrapProps>`
    padding: 80px 15%;
    position: relative;
    display: flex;
    justify-content: space-between;
    background-image: url(http://localhost:1337${({ bgImg }) => bgImg});
    background-repeat: no-repeat;
    background-size: cover;
     @media screen and (max-width: 1400px) {
            padding: 50px 10% 50px 5%;
    }
    @media screen and (max-width: 1000px) {
        padding: 50px 2% 100px 2%;
    }
    @media screen and (max-width: 650px) {
        flex-direction: column;
    }
`

export const Logo = styled('img')`
    padding: 8px 38px;
    border-radius: 12px;
    background-color: ${({theme})=> theme.palette.common.white};
    height: fit-content;
    @media screen and (max-width: 950px) {
        display: none ;
    }
`

export const Nav = styled('div')`
    display: flex;
    flex-direction: column;
    & a {
        margin-bottom: 20px;
        color: ${({theme})=>theme.palette.common.white};
    }
    @media screen and (max-width: 6500px) {
        margin-bottom: 30px;
    }
`
export const Btn = styled('a')`

`

export const Contacts = styled('div')`
    display: flex;
    flex-direction: column;
    & h5 {
        color: ${({ theme }) => theme.palette.common.white};
        font-weight: 600;
    }
    @media screen and (max-width: 6500px) {
        margin-bottom: 30px;
    }
`

export const Contact = styled('div')`
    display: flex;
    position: relative;
    align-items: center;
    margin-top: 20px;
    &::before {
        content: '';
        background: url('/call.svg');
        position: absolute;
        width: 24px;
        height: 24px;
        background-size: cover;
        background-repeat: no-repeat
    }

    & h5 {
        color: ${({ theme }) => theme.palette.common.white};
        margin-left: 50px;
        font-weight: 400;
    }
`

export const Email = styled('div')`
    display: flex;
    position: relative;
    align-items: center;
    margin-top: 20px;
    &:before {
        content: '';
        background: url('/mail.svg');
        position: absolute;
        width: 24px;
        height: 24px;
        background-size: cover;
        background-repeat: no-repeat;

    }

    & h5 {
        color: ${({ theme }) => theme.palette.common.white};
        margin-left: 50px;
        font-weight: 400;
    }
`

export const SocialMedia = styled('div')`
    display: flex;
    flex-direction: column;
    & h5 {
        color: ${({ theme }) => theme.palette.common.white};
        font-weight: 600;
    }
`

export const Links = styled('div')`
    display: flex;
    flex-direction: column;
`

export const Link = styled('a')`
    display: flex;
    align-items: center;
    margin-top: 20px;
    & h5 {
        margin-left: 20px;
        color: ${({ theme }) => theme.palette.common.white};
        font-weight: 400;
    }
    &:hover {
        & img {
          filter: invert(0.1)
        }

        & h5 {
            color: ${({theme})=>theme.palette.background.alternate};
        }
    }
   
`

export const SocialIcon = styled('img')`
    fill: white;
`

export const UpBtn = styled(Button)`
    width: fit-content;
    border-radius: 50%;
    position: absolute;
    right: 3%;
    bottom: 25%;
    & span {
        margin: 0;
    };
    @media screen and (max-width: 1000px) {
        bottom: 8%;
        right: calc(50% - 32px);
    }
    @media screen and (max-width: 650px) {
        display: none;
    }
   
`


