'use client'
// Core
import React, { useEffect, useState, useContext, createContext } from 'react';

// Styles
import * as S from './styles';

// View
import { Header } from '../components/header';
import { FirstSection } from '../components/firstSection';
import { SecondSection } from '../components/secondSection';
import { ThirdSection } from '../components/thirdSection';
import { FourthSection } from '../components/fourthSection';
import { FifthSection } from '../components/fifthSection';
import { SixthSection } from '../components/sixthSection';
import { SeventhSection } from '../components/seventhSection';
import { EighthSection } from '../components/eighthSection'
import { Footer } from '../components/footer'

// MUI
import { CssBaseline, ThemeProvider } from '@mui/material';

// MUI Theme
import mainTheme from '../theme/theme'
import { MobileMenu } from '../components/mobileMenu/index';

export const LocalContext = createContext<{ 
  local: string,
  setLocal: React.Dispatch<React.SetStateAction<string>>
  burger: boolean,
  setBurger: React.Dispatch<React.SetStateAction<boolean>>
}>({ 
    local: 'en',
    setLocal: () => {},
    burger: false,
    setBurger: () => {},
  })


export default function Home() {
    const [mounted, setMounted] = useState(false)
    useEffect(()=>setMounted(true),[])

    const [local, setLocal] = useState('en')
    const [burger, setBurger] = useState(false)

  const [screenWidth, setScreenWidth] = useState(window.innerWidth);

  useEffect(() => {
    const handleResize = () => {
      const newWidth = window.innerWidth;
      if (newWidth >= 650) setBurger(false)
      setScreenWidth(newWidth);
    };

    window.addEventListener('resize', handleResize);

    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, []);
    

  return (
    <LocalContext.Provider value={{local, setLocal, burger, setBurger}}>
      <ThemeProvider theme={mainTheme}>
          <CssBaseline />
          <S.Wrap style={{ visibility: mounted ? 'visible' : 'hidden' }}>
            <Header />
            {burger && <MobileMenu />}
            {!burger && <>
              <FirstSection />
              <SecondSection />
              <ThirdSection />
              <FourthSection />
              <FifthSection />
              <SixthSection />
              <SeventhSection />
              <EighthSection />
              <Footer />
            </>}
          </S.Wrap>
      </ThemeProvider> 
    </LocalContext.Provider>
  )
}

