import { render, screen } from '@testing-library/react';
import App from './App';

test('renders react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/Making React App with Docker/i);
  expect(linkElement).toBeInTheDocument();
});
