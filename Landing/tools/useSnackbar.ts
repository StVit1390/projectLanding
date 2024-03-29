// Core
import { useState } from 'react';

export const useSnackbar = () => {
    const [open, setOpen] = useState(false);

    const handleClick = () => {
        setOpen(true);  
    };

    const handleClose = (event: React.SyntheticEvent | Event, reason?: string) => {
        if (reason === 'clickaway') {
            return;
        }

        setOpen(false);
    };

    return {
        open,
        handleClick,
        handleClose,
    };
};
