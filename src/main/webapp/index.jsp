<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>SaaS App</title>
  <link href="https://fonts.googleapis.com/css2?family=Clash+Display:wght@400;600&family=Syne:wght@400;500&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet" />
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Outfit', sans-serif;
      background: #f4f0eb;
      color: #1c1c1c;
    }

    a { color: inherit; text-decoration: none; }

    /* NAV */
    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1.25rem 2.5rem;
      background: #f4f0eb;
      position: sticky;
      top: 0;
      z-index: 10;
      border-bottom: 1px solid #e0dbd3;
    }
    .logo {
      font-size: 18px;
      font-weight: 600;
      letter-spacing: -0.5px;
    }
    .logo span { color: #e8602c; }
    .nav-links {
      display: flex;
      gap: 2rem;
      font-size: 14px;
      color: #666;
    }
    .nav-links a:hover { color: #1c1c1c; }
    .nav-cta {
      background: #1c1c1c;
      color: #f4f0eb;
      padding: 0.55rem 1.25rem;
      border-radius: 6px;
      font-size: 14px;
      font-weight: 500;
      cursor: pointer;
      border: none;
      transition: opacity 0.15s;
    }
    .nav-cta:hover { opacity: 0.85; }

    /* HERO */
    .hero {
      text-align: center;
      padding: 6rem 2rem 5rem;
      max-width: 720px;
      margin: 0 auto;
    }
    .hero .badge {
      display: inline-block;
      background: #fde8de;
      color: #e8602c;
      font-size: 12px;
      font-weight: 500;
      padding: 5px 14px;
      border-radius: 100px;
      margin-bottom: 1.5rem;
      border: 1px solid #f5c4ad;
    }
    .hero h1 {
      font-size: 56px;
      font-weight: 600;
      line-height: 1.1;
      letter-spacing: -2px;
      margin-bottom: 1.25rem;
    }
    .hero h1 em {
      font-style: normal;
      color: #e8602c;
      border-bottom: 3px solid #e8602c;
    }
    .hero p {
      font-size: 17px;
      color: #666;
      line-height: 1.7;
      margin-bottom: 2.5rem;
    }
    .hero-btns { display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap; }
    .btn-primary {
      background: #e8602c;
      color: #fff;
      padding: 0.75rem 1.75rem;
      border-radius: 8px;
      font-size: 15px;
      font-weight: 500;
      border: none;
      cursor: pointer;
      transition: opacity 0.15s;
    }
    .btn-primary:hover { opacity: 0.9; }
    .btn-ghost {
      background: transparent;
      color: #1c1c1c;
      padding: 0.75rem 1.75rem;
      border-radius: 8px;
      font-size: 15px;
      font-weight: 500;
      border: 1px solid #ccc;
      cursor: pointer;
      transition: background 0.15s;
    }
    .btn-ghost:hover { background: #ece8e1; }

    /* STATS */
    .stats {
      display: flex;
      justify-content: center;
      gap: 3rem;
      flex-wrap: wrap;
      padding: 2rem 2rem 4rem;
      border-bottom: 1px solid #e0dbd3;
    }
    .stat { text-align: center; }
    .stat .num { font-size: 32px; font-weight: 600; letter-spacing: -1px; }
    .stat .label { font-size: 13px; color: #888; margin-top: 0.25rem; }

    /* FEATURES */
    .features-section {
      padding: 4rem 2rem;
      max-width: 960px;
      margin: 0 auto;
    }
    .features-section h2 {
      text-align: center;
      font-size: 36px;
      font-weight: 600;
      letter-spacing: -1px;
      margin-bottom: 2.5rem;
    }
    .features-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 16px;
    }
    .feature-card {
      background: #fff;
      border-radius: 14px;
      padding: 1.5rem;
      border: 1px solid #e0dbd3;
    }
    .feature-card .icon {
      width: 40px;
      height: 40px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 18px;
      margin-bottom: 1rem;
    }
    .icon-orange { background: #fde8de; }
    .icon-blue   { background: #ddeeff; }
    .icon-green  { background: #dff5e3; }
    .feature-card h3 { font-size: 16px; font-weight: 500; margin-bottom: 0.5rem; }
    .feature-card p  { font-size: 14px; color: #777; line-height: 1.65; }

    /* CTA BANNER */
    .cta-banner {
      margin: 2rem;
      background: #1c1c1c;
      color: #f4f0eb;
      border-radius: 16px;
      padding: 3rem 2rem;
      text-align: center;
    }
    .cta-banner h2 {
      font-size: 32px;
      font-weight: 600;
      letter-spacing: -1px;
      margin-bottom: 1rem;
    }
    .cta-banner p { font-size: 15px; color: #aaa; margin-bottom: 2rem; }

    /* FOOTER */
    footer {
      text-align: center;
      padding: 2rem;
      font-size: 13px;
      color: #aaa;
    }
  </style>
</head>
<body>

  <nav>
    <span class="logo">flow<span>ai</span></span>
    <div class="nav-links">
      <a href="#">Product</a>
      <a href="#">Pricing</a>
      <a href="#">Docs</a>
    </div>
    <button class="nav-cta">Sign up free</button>
  </nav>

  <section class="hero">
    <span class="badge">🚀 Now in public beta</span>
    <h1>Automate your<br><em>workflow</em> today</h1>
    <p>FlowAI connects your tools, eliminates repetitive tasks, and helps your team focus on what actually matters.</p>
    <div class="hero-btns">
      <button class="btn-primary">Start for free</button>
      <button class="btn-ghost">Watch demo</button>
    </div>
  </section>

  <div class="stats">
    <div class="stat"><div class="num">12k+</div><div class="label">Active users</div></div>
    <div class="stat"><div class="num">98%</div><div class="label">Uptime SLA</div></div>
    <div class="stat"><div class="num">3.2M</div><div class="label">Tasks automated</div></div>
    <div class="stat"><div class="num">4.9★</div><div class="label">Average rating</div></div>
  </div>

  <section class="features-section">
    <h2>Everything you need</h2>
    <div class="features-grid">
      <div class="feature-card">
        <div class="icon icon-orange">⚡</div>
        <h3>Instant automation</h3>
        <p>Set up workflows in minutes with our no-code builder. No engineering required.</p>
      </div>
      <div class="feature-card">
        <div class="icon icon-blue">🔗</div>
        <h3>100+ integrations</h3>
        <p>Connect Slack, Notion, GitHub, Jira, and dozens more with a single click.</p>
      </div>
      <div class="feature-card">
        <div class="icon icon-green">📊</div>
        <h3>Real-time analytics</h3>
        <p>Track performance, spot bottlenecks, and optimize your team's efficiency.</p>
      </div>
    </div>
  </section>

  <div class="cta-banner">
    <h2>Ready to get started?</h2>
    <p>Join thousands of teams already using FlowAI. Free plan available.</p>
    <button class="btn-primary">Create free account</button>
  </div>

  <footer>&copy; 2026 FlowAI Inc. All rights reserved.</footer>

</body>
</html>
