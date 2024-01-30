// Core
import React, { FC } from 'react';

//MUI
import {Snackbar} from '@mui/material';


interface AutohideSnackbarProps {
  open: boolean,
  handleClose: (event: React.SyntheticEvent | Event, reason?: string) => void
}

export const AutohideSnackbar: FC<AutohideSnackbarProps> = ({open, handleClose}) => {
 

    return (
            <Snackbar
                open={open}
                autoHideDuration={3500}
                onClose={handleClose}
                message="successfully copied"
            />
    );
}