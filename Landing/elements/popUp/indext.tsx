// Core
import React, { FC, useContext } from 'react';

// MUI
import Dialog from '@mui/material/Dialog';
import DialogTitle from '@mui/material/DialogTitle';
import DialogContent from '@mui/material/DialogContent';
import IconButton from '@mui/material/IconButton';
import { Slide, Typography } from '@mui/material';
import { TransitionProps } from '@mui/material/transitions';

// Icons
import CloseIcon from '@mui/icons-material/Close';


// Context
import { LocalContext } from '../../app/page';


interface PopUpProps {
  children: React.ReactNode;
}

const Transition = React.forwardRef(function Transition(
    props: TransitionProps & {
        children: React.ReactElement<any, any>;
    },
    ref: React.Ref<unknown>,
) {
    return <Slide direction="up" ref={ref} {...props} />;
});

export const PopUp: FC<PopUpProps> = ({ children }) => {
    const {setPopUpIsVisible, popUpIsVisible} = useContext(LocalContext)
  return (
      <Dialog
        open={popUpIsVisible}
        onClose={() => setPopUpIsVisible(false)}
        TransitionComponent={Transition}>
      <DialogTitle>
              <IconButton edge="end" color="inherit" onClick={() => setPopUpIsVisible(false)} aria-label="close" style={{ left: '90%' }}>
          <CloseIcon />
        </IconButton>
              <Typography>dialog title</Typography>
      </DialogTitle>
      <DialogContent>
        {children}
      </DialogContent>
    </Dialog>
  );
};
