<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Portfolio Zavia</title>
  <link href="https://fonts.googleapis.com/css2?family=Space+Mono:wght@400;700&family=Inter:wght@300;400;500&display=swap" rel="stylesheet" />
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Inter', sans-serif;
      background: #0d0d0d;
      color: #f0f0f0;
      min-height: 100vh;
    }

    a { color: inherit; text-decoration: none; }

    /* NAV */
    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1.5rem 3rem;
      border-bottom: 1px solid #222;
    }
    .logo {
      font-family: 'Space Mono', monospace;
      font-size: 16px;
      color: #00ff99;
      letter-spacing: 2px;
      text-transform: uppercase;
    }
    .nav-links {
      display: flex;
      gap: 2rem;
      font-size: 13px;
      color: #888;
    }
    .nav-links a:hover { color: #f0f0f0; }

    /* HERO */
    .hero {
      padding: 8rem 3rem 5rem;
      max-width: 800px;
    }
    .hero .tag {
      font-family: 'Space Mono', monospace;
      font-size: 12px;
      color: #00ff99;
      letter-spacing: 3px;
      text-transform: uppercase;
      margin-bottom: 1.5rem;
    }
    .hero h1 {
      font-size: 64px;
      font-weight: 300;
      line-height: 1.1;
      letter-spacing: -2px;
      margin-bottom: 1.5rem;
    }
    .hero h1 span { color: #00ff99; }
    .hero p {
      font-size: 16px;
      color: #888;
      line-height: 1.8;
      max-width: 480px;
      margin-bottom: 2.5rem;
    }
    .btn-outline {
      display: inline-block;
      padding: 0.75rem 2rem;
      border: 1px solid #00ff99;
      border-radius: 2px;
      font-size: 13px;
      font-family: 'Space Mono', monospace;
      color: #00ff99;
      letter-spacing: 1px;
      cursor: pointer;
      background: transparent;
      transition: background 0.2s, color 0.2s;
    }
    .btn-outline:hover { background: #00ff99; color: #0d0d0d; }

    /* WORK GRID */
    .section-label {
      font-family: 'Space Mono', monospace;
      font-size: 11px;
      color: #444;
      letter-spacing: 3px;
      text-transform: uppercase;
      padding: 3rem 3rem 1rem;
    }
    .work-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 1px;
      background: #222;
      border-top: 1px solid #222;
      border-bottom: 1px solid #222;
    }
    .work-item {
      background: #0d0d0d;
      padding: 2rem;
      cursor: pointer;
      transition: background 0.2s;
    }
    .work-item:hover { background: #141414; }
    .work-item .year {
      font-family: 'Space Mono', monospace;
      font-size: 11px;
      color: #444;
      margin-bottom: 1rem;
    }
    .work-item h3 { font-size: 18px; font-weight: 400; margin-bottom: 0.5rem; }
    .work-item p { font-size: 13px; color: #666; line-height: 1.6; }
    .work-item .tag-pill {
      display: inline-block;
      margin-top: 1rem;
      padding: 3px 10px;
      border: 1px solid #333;
      border-radius: 2px;
      font-size: 11px;
      color: #555;
      font-family: 'Space Mono', monospace;
    }

    /* FOOTER */
    footer {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 2rem 3rem;
      font-size: 12px;
      color: #444;
      font-family: 'Space Mono', monospace;
    }
    footer a { color: #00ff99; }
  </style>
</head>
<body>

  <nav>
    <span class="logo">JD.dev</span>
    <div class="nav-links">
      <a href="#">Work</a>
      <a href="#">About</a>
      <a href="#">Contact</a>
    </div>
  </nav>

  <section class="hero">
    <p class="tag">Available for work</p>
    <h1>Designer &<br><span>Developer</span></h1>
    <p>I build clean, fast, and thoughtful digital experiences. Based in San Francisco, working globally.</p>
    <button class="btn-outline">View my work</button>
  </section>

  <p class="section-label">Selected projects</p>
  <section class="work-grid">
    <div class="work-item">
      <p class="year">2024</p>
      <h3>Fintech Dashboard</h3>
      <p>Real-time analytics platform for crypto portfolio management.</p>
      <span class="tag-pill">React</span>
    </div>
    <div class="work-item">
      <p class="year">2024</p>
      <h3>Brand Identity</h3>
      <p>Full visual identity system for a Berlin-based startup.</p>
      <span class="tag-pill">Branding</span>
    </div>
    <div class="work-item">
      <p class="year">2023</p>
      <h3>E-commerce Redesign</h3>
      <p>Increased conversions by 40% through UX research and redesign.</p>
      <span class="tag-pill">UX/UI</span>
    </div>
  </section>

  <footer>
    <span>&copy; 2026 John Doe</span>
    <a href="mailto:hello@jd.dev">hello@jd.dev</a>
  </footer>

</body>
</html>
