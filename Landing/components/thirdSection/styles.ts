// MUI
import { Button, Typography } from '@mui/material'
import { styled } from '@mui/system'

interface SectionWrapProps {
    bgImg: string
}

export const SectionWrap = styled('section')<SectionWrapProps>`
    display: flex;
    padding: 50px 15%;
    background-image: url(http://localhost:1337${({bgImg})=> bgImg});
    background-repeat: no-repeat;
    background-position: center;
     @media screen and (max-width: 1400px) {
        padding: 50px 5%;
    }
     @media screen and (max-width: 1100px) {
        padding: 50px 2%;
    }
     @media screen and (max-width: 750px) {
        flex-direction: column;
        background-size: cover;
        background-position: inherit;
    }
`

export const BannerInfo = styled('div')`
    width: 50%;
    display: flex;
    @media screen and (max-width: 750px) {
        width: 100%;
        justify-content: center;
        margin: 30px 0;
    }
`

export const BannerInfoWrap = styled('div')`
    display: flex;
    flex-direction: column;
    align-self: center;
    & > *:not(:last-child) {
    margin-bottom: 20px;
    }
    @media screen and (max-width: 750px) {
       align-items: center;
       text-align: center;
    }
`

export const Tittle = styled(Typography)`
    color: ${({theme})=>theme.palette.common.white};
    @media screen and (max-width: 900px) {
        font-size: 3.5rem;
    }
    @media screen and (max-width: 500px) {
        font-size: 3rem;
    }
`

export const Description = styled(Typography)`
    color: ${({ theme }) => theme.palette.common.white};
`

export const BannerBanks = styled('div')`
    width: 50%;
    @media screen and (max-width: 750px) {
        width: 100%;
    }
`

export const DonateBtn = styled(Button)`
    @media screen and (max-width: 600px) {
        align-self: center;
    }
`

export const BannerBanksWrap = styled('div')`
    background-color: ${({ theme }) => theme.palette.common.white};
    border-radius: 7px;
    padding: 30px;
    margin-left: 100px;
     @media screen and (max-width: 1100px) {
        margin-left: 30px;
    }
     @media screen and (max-width: 1100px) {
        margin-left: 0;
    }
`

export const Fields = styled('div')`
    margin-top: 20px;
     & > *:not(:last-child) {
    margin-bottom: 40px;
  }
`