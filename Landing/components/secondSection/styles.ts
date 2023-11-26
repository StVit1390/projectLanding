// MUI
import { Typography } from '@mui/material';
import { styled } from '@mui/system'

export const SecondSectionWrap = styled('section')`
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 50px 15% ;
    background-color: ${props => props.theme.palette.common.white};
    @media screen and (max-width: 1400px) {
        padding: 0 5%;
    }
     @media screen and (max-width: 1100px) {
        padding: 0 1%;
    }
`

export const Tittle = styled(Typography)`
  margin: 60px 0 30px 0;
`

export const Cards = styled('div')`
  display: flex;
  flex-direction: column;
  & > *:not(:last-child) {
    margin-bottom: 20px;
  }
  margin-bottom: 100px;
`;


