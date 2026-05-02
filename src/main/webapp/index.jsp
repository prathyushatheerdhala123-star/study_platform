<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Website</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display&family=DM+Sans:wght@400;500&display=swap" rel="stylesheet" />
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'DM Sans', sans-serif;
      background: #ffffff;
      color: #1a1a1a;
    }

    a { color: inherit; text-decoration: none; }

    /* NAV */
    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1.2rem 2rem;
      border-bottom: 1px solid #e5e5e5;
    }
    .logo {
      font-family: 'DM Serif Display', serif;
      font-size: 20px;
      letter-spacing: -0.5px;
    }
    .nav-links {
      display: flex;
      gap: 1.5rem;
      font-size: 14px;
      color: #666;
    }
    .nav-links a:hover { color: #1a1a1a; }

    /* HERO */
    .hero {
      padding: 5rem 2rem 4rem;
      text-align: center;
      max-width: 640px;
      margin: 0 auto;
    }
    .hero h1 {
      font-family: 'DM Serif Display', serif;
      font-size: 48px;
      line-height: 1.15;
      letter-spacing: -1px;
      margin-bottom: 1rem;
    }
    .hero p {
      font-size: 17px;
      color: #555;
      line-height: 1.7;
      margin-bottom: 2rem;
    }

    /* BUTTONS */
    .btn {
      display: inline-block;
      padding: 0.65rem 1.5rem;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
      font-weight: 500;
      cursor: pointer;
      background: #ffffff;
      color: #1a1a1a;
      transition: background 0.15s;
    }
    .btn:hover { background: #f5f5f5; }
    .btn-fill {
      background: #1a1a1a;
      color: #ffffff;
      margin-right: 0.75rem;
      border-color: #1a1a1a;
    }
    .btn-fill:hover { opacity: 0.85; }

    /* FEATURES */
    .features {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 12px;
      padding: 2rem;
      max-width: 900px;
      margin: 0 auto;
    }
    .card {
      background: #f9f9f7;
      border-radius: 12px;
      padding: 1.25rem;
      border: 1px solid #e5e5e5;
    }
    .card-icon {
      width: 32px;
      height: 32px;
      border-radius: 8px;
      background: #ffffff;
      border: 1px solid #e5e5e5;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 0.75rem;
      font-size: 16px;
    }
    .card h3 { font-size: 14px; font-weight: 500; margin-bottom: 0.4rem; }
    .card p { font-size: 13px; color: #666; line-height: 1.6; }

    /* FOOTER */
    footer {
      text-align: center;
      padding: 2rem;
      font-size: 13px;
      color: #999;
      border-top: 1px solid #e5e5e5;
      margin-top: 2rem;
    }
  </style>
</head>
<body>

  <nav>
    <span class="logo">Sitename</span>
    <div class="nav-links">
      <a href="#">About</a>
      <a href="#">Features</a>
      <a href="#">Pricing</a>
      <a href="#">Contact</a>
    </div>
  </nav>

  <section class="hero">
    <h1>Hello IARE</h1>
    <p>A clean, minimal starting point for your next website. Edit this to make it your own.</p>
    <button class="btn btn-fill">Get started</button>
    <button class="btn">Learn more</button>
  </section>

  <section class="features">
    <div class="card">
      <div class="card-icon">✦</div>
      <h3>Simple</h3>
      <p>Clean HTML, CSS, and JS — no frameworks needed to get started.</p>
    </div>
    <div class="card">
      <div class="card-icon">◈</div>
      <h3>Responsive</h3>
      <p>Adapts gracefully to any screen size using flexible grid layout.</p>
    </div>
    <div class="card">
      <div class="card-icon">◎</div>
      <h3>Customizable</h3>
      <p>Swap fonts, colors, and sections to match your brand in minutes.</p>
    </div>
  </section>

  <footer>
    &copy; 2026 Sitename. All rights reserved.
  </footer>

</body>
</html>
