// Core
import React, { FC, useState, useEffect, useContext } from "react";

// Tools
import axios from "axios";

// Styles
import * as S from './styles'

// MUI
import { Typography, Button, CircularProgress, Box, Snackbar } from "@mui/material";

// Locale
import { LocalContext } from '../../app/page'


export const EighthSection: FC = () => {
    const init = { name: '', phone: '', email: '', message: '' }
    const [formValues, setFormValues] = useState(init)
    const { local } = useContext(LocalContext)
    const [isLoading, setIsLoading] = useState(false)
    const [isOpenSnackBar, setIsOpenSnackBar] = useState<boolean>(false)

    useEffect(() => {
        axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/eighth-section/?populate=*&locale=${local}`).then((res: any) => {
            setData(res.data.data.attributes)
        })
    }, [local])

    const [data, setData] = useState<any>()
    const [validForm, setValidForm] = useState({
        name: false,
        phone: false,
        email: false,
    })

    const [err, setErr] = useState(false)
    const phoneNumberRegex = /^(?:\+\d{1,4}\s?)?(\d{1,4}[-\s]?){1,}\d{1,}$/;
    return (
        <S.SectionWrap id="eighthSection">
            <S.Tittle variant="h2">{data && data.tittle}</S.Tittle>
            <S.FormWrap>
                <S.FormTittle variant="h3">{data && data.subTittle}</S.FormTittle>
                {isLoading ? <Box height="584px" display="flex" alignItems="center" justifyContent="center"><CircularProgress /></Box> :
                    <>
                        <S.FormContent>
                            <S.Label>
                                <Typography variant="body2">{data && data.name}:</Typography>
                                <S.CustomField
                                    sx={{ height: '75px' }}
                                    id="outlined-basic"
                                    value={formValues.name}
                                    onChange={(e) => {
                                        setFormValues({ ...formValues, name: e.target.value.replace(/[^A-Za-z]/g, '') });
                                        if (formValues.name.match('^[a-zA-Z]{1,}$')) {
                                            setValidForm({ ...validForm, name: true })
                                        } else {
                                            setValidForm({ ...validForm, name: false })
                                        }
                                    }}
                                    fullWidth
                                    placeholder={data && data.namePlaceholder}
                                    rows='3'
                                    variant="outlined"
                                />
                                {err && !validForm.name && <S.Err>Your name must contain at least two characters</S.Err>}
                            </S.Label>
                            <S.Label>
                                <Typography variant="body2">{data && data.phone}:</Typography>
                                <S.CustomField
                                    sx={{ height: '75px' }}
                                    id="outlined-basic"
                                    value={formValues.phone}
                                    onChange={(e) => {
                                        setFormValues({ ...formValues, phone: e.target.value.replace(/[^\d+]/g, '') });
                                        if (formValues.phone.match(phoneNumberRegex)) {
                                            setValidForm({ ...validForm, phone: true })
                                        } else {
                                            setValidForm({ ...validForm, phone: false })
                                        }
                                    }}
                                    inputMode="numeric"
                                    fullWidth
                                    placeholder={data && data.phonePlaceholder}
                                    variant="outlined" />
                                {err && !validForm.phone && <S.Err>Enter please your valid phone number</S.Err>}
                            </S.Label>
                            <S.Label>
                                <Typography variant="body2">{data && data.email}:</Typography>
                                <S.CustomField
                                    sx={{ height: '75px' }}
                                    id="outlined-basic"
                                    value={formValues.email}
                                    onChange={(e) => {
                                        setFormValues({ ...formValues, email: e.target.value });
                                        if (formValues.email.match(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)) {
                                            setValidForm({ ...validForm, email: true })
                                        } else {
                                            setValidForm({ ...validForm, email: false })
                                        }
                                    }
                                    }
                                    fullWidth
                                    placeholder={data && data.emailPlaceholder}
                                    variant="outlined" />
                                {err && !validForm.email && <S.Err>Please enter the correct email</S.Err>}
                            </S.Label>
                            <S.Label>
                                <Typography variant="body2">{data && data.question}:</Typography>
                                <S.CustomField
                                    value={formValues.message}
                                    onChange={(e) => {
                                        setFormValues({ ...formValues, message: e.target.value });

                                    }}
                                    multiline
                                    fullWidth
                                    id="outlined-basic"
                                    placeholder={data && data.questionPlaceholder}
                                    variant="outlined"
                                    minRows={6} />
                            </S.Label>
                        </S.FormContent>
                        <Button variant="contained" onClick={() => {
                            if (!validForm.name || !validForm.email || !validForm.phone) {
                                setErr(true)
                            }
                            if (validForm.name && validForm.email && validForm.phone) {
                                setIsLoading(true)
                                axios
                                    .post('http://localhost:3001/api/supports', { data: formValues })
                                    .then(response => {
                                        //set timeout for 2 seconds
                                        setTimeout(() => {
                                            setIsLoading(false)
                                            setIsOpenSnackBar(true)
                                        }, 2000)

                                        console.log('Support request created:', response.data);
                                    })
                                    .catch(error => {
                                        console.error('Error creating support request:', error);
                                    });
                                setFormValues(init)
                                setErr(false)
                            }
                        }}>{data && data.btn}</Button>
                    </>
                }
            </S.FormWrap>
            <Snackbar
                open={isOpenSnackBar}
                autoHideDuration={6000}
                message="Your message has been sent successfully"
            >
                
            </Snackbar>
        </S.SectionWrap>
    )
}