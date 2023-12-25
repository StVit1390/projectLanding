// MUI
import { styled } from '@mui/system';

export const PopUpWrap = styled('div')`
    background-color: rgba(0,0,0,0.4);
    position: fixed;
    width: 100vw;
    height: 100vh;
    z-index: 2;
    display: flex;
    top: 0; 
    left: 0;

`

export const PopUpContent = styled('div')`
    background-color: ${({ theme }) => theme.palette.common.white};
    padding:50px;
    border-radius: 15px;
    opacity: 1;
    margin: auto;
    position: relative;
`

export const CloseBtn = styled('div')`
    position: absolute;
    cursor: pointer;
    font-size: 30px;
    top: 10px;
    right: 20px;
`

export const NoScroll = styled('div')`
    overflow: hidden;
    height: 100%;
    width: 100%;
`