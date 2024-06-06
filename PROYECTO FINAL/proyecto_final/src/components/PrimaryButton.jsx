import React from 'react';
import colors from '../shared/values';

// Definición del componente Button
const PrimaryButton = ({ onPress, label, alto, ancho }) => {
  return (
    <button onClick={onPress} style={{ ...styles.heading, height: alto, width: ancho }}>
      {label}
    </button>
  );
};

const styles = {
  heading: {
    backgroundColor: colors.primary,
    border: 'none',
    borderRadius: '5px',
    color: colors.tertiary,
    fontWeight: '500',
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
    textAlign: 'center',
    fontSize: '18px',
    boxShadow: '0px 0px 21px 0px rgba(0,0,0,0.24)',

  },

}

export default PrimaryButton;
