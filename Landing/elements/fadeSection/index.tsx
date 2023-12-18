import React, {FC, ReactNode} from 'react';

// Tools
import { useSpring, animated, config } from 'react-spring';
import { useInView } from 'react-intersection-observer';


interface FadeInSectionProps {
    children: ReactNode;
}

export const FadeInSection: FC<FadeInSectionProps> = ({ children }) => {
    const [ref, inView] = useInView({
        triggerOnce: true,
    });

    const props = useSpring({
        opacity: inView ? 1 : 0,
        from: { opacity: 0 },
        config: { duration: 1000 }, // Продолжительность анимации в миллисекундах
    });

    return <animated.div ref={ref} style={props}>{children}</animated.div>;
};