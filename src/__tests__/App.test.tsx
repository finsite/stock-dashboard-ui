import { render, screen } from '@testing-library/react';
import React from 'react';

describe('App', () => {
  it('renders a basic element', () => {
    render(<div>Hello World</div>);
    expect(screen.getByText('Hello World')).toBeInTheDocument();
  });
});
