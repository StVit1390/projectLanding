// Core
import React, { FC } from "react";

// Styles
import * as S from './styles'

// MUI
import { SvgIcon, Typography } from "@mui/material";

// Tools
import copy from 'clipboard-copy';

interface AccountFielProps {
    name: string,
    acc: number
}

export const AccountField: FC<AccountFielProps> = ({name, acc}) => {
    const textToCopy = acc.toString();

    const handleCopyClick = () => {
        copy(textToCopy)
    };


    
    return (
        <S.Field>
            <Typography variant="body1">{name}</Typography>
            <Typography variant="h5">{textToCopy.replace(/(\d{4})(?=\d)/g, "$1 ")}</Typography>
            <S.Copy onClick={handleCopyClick}>
                <SvgIcon>
                    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 26 26" fill="none">
                        <g clipPath="url(#clip0_4_176)">
                            <path d="M10.5456 21.125C8.00737 21.125 5.94141 19.0591 5.94141 16.5208V5.41675H4.04564C2.40219 5.41675 1.06641 6.75233 1.06641 8.39578V23.0208C1.06641 24.6642 2.40219 26 4.04564 26H17.5872C19.2306 26 20.5664 24.6642 20.5664 23.0208V21.125H10.5456Z" fill="#10AFAB" />
                            <path d="M24.8997 2.97923C24.8997 1.3336 23.5661 0 21.9206 0H10.5456C8.90001 0 7.56641 1.3336 7.56641 2.97923V16.5208C7.56641 18.1664 8.90001 19.5 10.5456 19.5H21.9206C23.5661 19.5 24.8997 18.1664 24.8997 16.5208V2.97923Z" fill="#10AFAB" />
                        </g>
                        <defs>
                            <clipPath id="clip0_4_176">
                                <rect width="26" height="26" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>
                </SvgIcon>
            </S.Copy>
        </S.Field>
    )

}
