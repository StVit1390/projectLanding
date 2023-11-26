// MUI
import { Button } from "@mui/material";
import { styled } from "@mui/system";

export const SectionWrap = styled('section')`
    background: ${({theme})=>theme.palette.background.default};
    padding: 15px 40px;
    height: calc(100vh - 83px);
    display:flex ;
    flex-direction: column;
`

export const NavMenu = styled('div')`
    display: flex;
    flex-direction: column;
`

export const Btn = styled('a')`
    text-decoration: none;
    line-height: 18px;
    font-size: 1rem;
    font-weight: 500;
    color: ${({ theme }) => theme.palette.common.black};
    position: relative;
    margin-bottom: 37px;
    cursor: pointer;
     @media screen and (max-width: 650px) {
       font-size: 1rem;

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

export const SupportUs = styled(Button)`
    align-self: center;
`