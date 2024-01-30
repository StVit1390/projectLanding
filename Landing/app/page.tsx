'use client'
// Core
import React, { useEffect, useState, createContext, useMemo } from 'react';

// Styles
import * as S from './styles';

// Tools
import {FadeInSection} from '../elements/fadeSection/'


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

const sections = [
  <FirstSection key='0'/>,
  <SecondSection key='1'/>,
  <ThirdSection key='2'/>,
  <FourthSection key='3'/>,
  <FifthSection key='4'/>,
  <SixthSection key='5'/>,
  <SeventhSection key='6'/>,
  <EighthSection key='7'/>
] 


export default function Home() {
    const [mounted, setMounted] = useState(false)
    useEffect(()=>setMounted(true),[])

    const [local, setLocal] = useState('en')
    const [burger, setBurger] = useState(false)
    

  useEffect(() => {
    const handleResize = () => {
      if (window.innerWidth >= 650) setBurger(false)
    };

    window.addEventListener('resize', handleResize);

    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, []);
    
  const contextValue = useMemo(
    () => ({
      local,
      setLocal,
      burger,
      setBurger,
    }),
    [local, setLocal, burger, setBurger]
  );

  
  return (
    <LocalContext.Provider value={contextValue}>
      <ThemeProvider theme={mainTheme}>
          <CssBaseline />
          <S.Wrap style={{ visibility: mounted ? 'visible' : 'hidden' }}>
            <Header />
            {burger && <MobileMenu />}
            {!burger && <>
              {sections.map((section, i)=>{
                return (
                  <FadeInSection key={i}>{section}</FadeInSection>
                )
              })}
              <Footer/>
            </>}
          </S.Wrap>
      </ThemeProvider> 
    </LocalContext.Provider>
  )
}

