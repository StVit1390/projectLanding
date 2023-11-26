// MUI
import { styled } from "@mui/system";

export const FourthSectionWrap = styled('section')`
    padding: 0 15%;
    display: flex;
    flex-direction: column;
    align-items: center;
    & > *:not(:last-child) {
    margin: 40px 0 40px 0 ;
    }

    @media screen and (max-width: 1400px) {
        padding: 50px 5%;
    }
`

export const FourthSectionContent = styled('div')`
    display: flex;
    flex-direction: column;
    background: ${({theme})=> theme.palette.background.custom1};
    padding: 50px;
    border-radius: 22px ;
    & > *:not(:last-child) {
    margin-bottom: 100px ;
    }
    @media screen and (max-width: 900px) {
        padding: 20px;
    }
`

export const FirstFloor = styled('div')`
    display: flex;
    @media screen and (max-width: 600px) {
        flex-direction: column;
    }
`

export const FirstFloorLeft = styled('div')`
    width: 70%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    & > *:not(:last-child) {
    margin-bottom: 30px;
    }
@media screen and (max-width: 900px) {
        width: 55%;;
        margin-right: 2%;
    }
    @media screen and (max-width: 600px) {
        width: 100%;;
        margin-right: 0;
    }
`

export const FirstFloorRight = styled('div')`
    width: 30%;
    display: flex;
    flex-direction: column;
    align-items: center;
    & > *:not(:last-child) {
    margin-top: 15px ;
    }
    @media screen and (max-width: 900px) {
        width: 45%;;
    }
    @media screen and (max-width: 600px) {
        width: 100%;
        & > *:not(:last-child) {
        margin-top: 25px ;
        }
    }

    
    
`
interface ImgProps {
    img:string
}

export const Img = styled('div') <ImgProps>`
    background-image: url(${({img})=>img});
    height: 450px;
    width: 100%;
    max-width: 310px;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    border-radius: 11px;
    @media screen and (max-width: 600px) {
        max-width: 100%;
        max-height: 300px;
    }
`

export const ImgBottom = styled('img')`
    width: 100%;
`

export const SecondFloor = styled('div')`
    display: flex;
    justify-content: space-between;
     @media screen and (max-width: 600px) {
        flex-direction: column;
    }
`

export const SecondFloorLeft = styled('div')`
    width: calc(50% - 10px);
     & > *:not(:last-child) {
    margin-bottom: 20px ;
    }
     @media screen and (max-width: 600px) {
        width: 100%;
    }
`

export const oSecondFloorRight = styled('div')`
    width: calc(50% - 10px);
     @media screen and (max-width: 600px) {
        width: 100%;
        margin-top: 25px;
        display: none;
    }
`