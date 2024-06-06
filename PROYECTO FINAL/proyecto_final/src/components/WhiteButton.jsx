import React from 'react'
import colors from '../shared/values'

export default function WhiteButton({ onPress, label, alto, ancho }) {



    return (
        <button onClick={onPress} style={{ ...styles.heading, height: alto, width: ancho }}>
            {label}
        </button>
    )
}

const styles = {
    heading: {
        backgroundColor: colors.secondary,
        border: 'none',
        borderRadius: '5px',
        color: colors.primary,
        fontWeight: '500',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        textAlign: 'center',
        fontSize: '18px',

    },
}
