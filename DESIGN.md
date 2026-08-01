---
name: Obsidian & Amber
colors:
  surface: '#121414'
  surface-dim: '#121414'
  surface-bright: '#37393a'
  surface-container-lowest: '#0c0f0f'
  surface-container-low: '#1a1c1c'
  surface-container: '#1e2020'
  surface-container-high: '#282a2b'
  surface-container-highest: '#333535'
  on-surface: '#e2e2e2'
  on-surface-variant: '#c3c7c5'
  inverse-surface: '#e2e2e2'
  inverse-on-surface: '#2f3131'
  outline: '#8d9290'
  outline-variant: '#434846'
  surface-tint: '#c4c7c5'
  primary: '#c4c7c5'
  on-primary: '#2d3130'
  primary-container: '#0b0f0e'
  on-primary-container: '#787c7a'
  inverse-primary: '#5b5f5e'
  secondary: '#ffb86b'
  on-secondary: '#492900'
  secondary-container: '#ed9000'
  on-secondary-container: '#583300'
  tertiary: '#f0bd8b'
  on-tertiary: '#482904'
  tertiary-container: '#1a0b00'
  on-tertiary-container: '#9e7347'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#e0e3e1'
  primary-fixed-dim: '#c4c7c5'
  on-primary-fixed: '#181c1b'
  on-primary-fixed-variant: '#444846'
  secondary-fixed: '#ffdcbc'
  secondary-fixed-dim: '#ffb86b'
  on-secondary-fixed: '#2c1700'
  on-secondary-fixed-variant: '#683d00'
  tertiary-fixed: '#ffdcbd'
  tertiary-fixed-dim: '#f0bd8b'
  on-tertiary-fixed: '#2c1600'
  on-tertiary-fixed-variant: '#623f18'
  background: '#121414'
  on-background: '#e2e2e2'
  surface-variant: '#333535'
typography:
  display-lg:
    fontFamily: Playfair Display
    fontSize: 64px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  display-md:
    fontFamily: Playfair Display
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-lg:
    fontFamily: Playfair Display
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.3'
  headline-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 28px
    fontWeight: '600'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-sm:
    fontFamily: Hanken Grotesk
    fontSize: 12px
    fontWeight: '600'
    lineHeight: '1.0'
    letterSpacing: 0.1em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 8px
  container-padding-mobile: 24px
  container-padding-desktop: 80px
  gutter: 24px
  section-gap: 120px
---

## Brand & Style

The design system for this mobile-first bar service emphasizes mystery, high-end mixology, and tactile luxury. It is designed to evoke the atmosphere of an exclusive, low-light speakeasy where craftsmanship is paramount.

The visual direction combines **Glassmorphism** with a **High-Contrast Dark UI**. Surfaces are treated as dark, semi-transparent layers that appear to float over subtle, atmospheric light leaks. The experience is cinematic, utilizing expansive whitespace (or "blackspace") to give each cocktail and service offering room to breathe. The mood is sophisticated, moody, and ultra-modern.

## Colors

This design system utilizes a palette rooted in deep shadows and liquid highlights. 

- **Obsidian (#0B0F0E):** The foundation. Used for the primary background to create an infinite sense of depth.
- **Amber (#FF9F1C):** The primary accent. Representing the warmth of spirits and candlelight. Used for call-to-actions, highlights, and active states.
- **Copper (#D4A373):** The secondary accent. Used for secondary UI elements and ornamental details.
- **Pure White (#FFFFFF):** Reserved strictly for high-priority typography and icons to ensure maximum legibility against the dark background.
- **Glass Overlay:** A semi-transparent black (`rgba(11, 15, 14, 0.6)`) with a 20px-40px backdrop blur for container surfaces.

## Typography

Typography contrast is the primary driver of hierarchy. **Playfair Display** provides an editorial, luxury feel for headlines, reminiscent of high-end spirits labeling. **Hanken Grotesk** offers a clean, technical counterpoint for functional text and body copy.

All display text should utilize tight letter spacing to maintain a "lock-up" feel. Body copy requires generous line-height to ensure readability in low-light environments. Labels should always be uppercase with increased tracking to denote categorization.

## Layout & Spacing

The layout follows a **Fluid Grid** model with high margins to create an "isolated" aesthetic for products. 

- **Mobile:** 4-column grid with 24px side margins.
- **Desktop:** 12-column grid with 80px side margins and a maximum content width of 1440px.
- **Rhythm:** Spacing follows an 8px incremental scale. Vertical rhythm should be loose; section gaps are intentionally large (120px+) to separate different "experiences" or cocktail categories.

Elements should often be centered to emphasize a symmetrical, premium feel. Use asymmetrical placements only for decorative imagery or floating glass cards.

## Elevation & Depth

Depth is not created with traditional drop shadows, but through **Tonal Layering and Glassmorphism**.

1.  **Level 0 (Base):** Deep Obsidian (#0B0F0E).
2.  **Level 1 (Cards/Modals):** Glass panels with a 1px inner border (stroke) of `rgba(255, 255, 255, 0.1)`. This creates a "rim light" effect.
3.  **Level 2 (Interactive):** Elements that are hovered or active gain a subtle Amber outer glow (`box-shadow: 0 0 20px rgba(255, 159, 28, 0.2)`).

Backgrounds should feature soft, blurred "blobs" of Amber and Copper (15% opacity) behind glass containers to simulate light refracting through liquid.

## Shapes

The shape language is organic yet structured. All containers, buttons, and input fields utilize a **0.5rem (8px)** base radius. This creates a soft, approachable feel that mimics the rounded edges of high-quality glassware.

Larger cards and hero sections may use `rounded-xl` (1.5rem) to emphasize the "floating glass" container style. Circles are used exclusively for decorative elements, icon backdrops, or "Add to Cart" quick-actions.

## Components

### Buttons
- **Primary:** Filled Amber (#FF9F1C) with black text. No shadow, but a slight outer glow on hover.
- **Secondary:** Transparent with a 1px white border. Text is white.
- **Tertiary:** Text-only in Amber with a 1px underline.

### Cards
Cards are the hallmark of the system. They must feature a backdrop-filter blur (20px), a subtle dark tint, and a 1px top-left aligned highlight border to simulate light hitting a glass edge.

### Input Fields
Inputs are bottom-border only or very subtle glass containers. The active state should transition the bottom border from grey to Amber.

### Chips/Tags
Small, pill-shaped elements with a Copper (#D4A373) border and low-opacity Copper fill. Used for "New," "Limited Edition," or "Spirit Base" labels.

### Lists
Lists should have generous vertical padding (16px-24px) with a very thin, 10% opacity white divider. Each item should feel like a distinct entry in a premium menu.