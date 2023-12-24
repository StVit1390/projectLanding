import React, { FC, ReactNode, useState } from 'react';
import { useSpring, animated } from 'react-spring';
import { useInView } from 'react-intersection-observer';

interface FadeInSectionProps {
    children: ReactNode;
}

export const FadeInSection: FC<FadeInSectionProps> = ({ children }) => {
    const [ref, inView] = useInView({
        triggerOnce: true,
    });

    const [isVisible, setIsVisible] = useState(false);

    const props = useSpring({
        opacity: isVisible ? 1 : 0,
        config: { duration: 500 },
    });

    if (inView && !isVisible) {
        setIsVisible(true);
    }

    return (
        <div ref={ref}>
            <animated.div style={props}>{children}</animated.div>
        </div>
    );
};
