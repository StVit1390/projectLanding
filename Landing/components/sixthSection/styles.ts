// MUI
import { styled } from '@mui/system'


export const SectionWrap = styled('section')`
    padding: 0 15%;
    background: ${({theme})=>theme.palette.background.custom1};
    display: flex;
    flex-direction: column;
    align-items: center;
    & h2{
        margin: 40px 0 30px 0;
    }

    @media screen and (max-width: 1400px) {
        padding: 50px 5%;
    }
    @media screen and (max-width: 1100px) {
        padding: 50px 2%;
    }
`

export const PartnerIcon = styled('img')`
    width: calc(20% - 10px);
    padding: 50px;
    margin: 5px;
    @media screen and (max-width: 900px) {
        padding: 30px;
    }
    @media screen and (max-width: 800px) {
        width: calc(33% - 10px);
    }
    @media screen and (max-width: 450px) {
        width: calc(50% - 10px);
    }
`

export const PartnersWrap = styled('div')`
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
`
