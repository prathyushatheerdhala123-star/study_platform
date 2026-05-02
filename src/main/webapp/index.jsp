<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>StudyPlatform</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      font-family: 'Segoe UI', sans-serif;
      background: #0f0c29;
      background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
      min-height: 100vh;
      color: white;
    }

    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 60px;
      background: rgba(255,255,255,0.05);
      backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(255,255,255,0.1);
    }

    .logo {
      font-size: 1.8rem;
      font-weight: 700;
      color: #a78bfa;
      letter-spacing: 1px;
    }

    .logo span { color: #fff; }

    nav ul {
      list-style: none;
      display: flex;
      gap: 30px;
    }

    nav ul li a {
      color: rgba(255,255,255,0.8);
      text-decoration: none;
      font-size: 0.95rem;
      transition: color 0.3s;
    }

    nav ul li a:hover { color: #a78bfa; }

    .hero {
      text-align: center;
      padding: 100px 20px 60px;
    }

    .hero h1 {
      font-size: 3.5rem;
      font-weight: 800;
      line-height: 1.2;
      margin-bottom: 20px;
    }

    .hero h1 span {
      background: linear-gradient(90deg, #a78bfa, #60a5fa);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .hero p {
      font-size: 1.2rem;
      color: rgba(255,255,255,0.65);
      max-width: 600px;
      margin: 0 auto 40px;
      line-height: 1.7;
    }

    .btn-group {
      display: flex;
      gap: 16px;
      justify-content: center;
      flex-wrap: wrap;
    }

    .btn {
      padding: 14px 36px;
      border-radius: 50px;
      font-size: 1rem;
      font-weight: 600;
      cursor: pointer;
      border: none;
      transition: transform 0.2s, box-shadow 0.2s;
      text-decoration: none;
    }

    .btn:hover { transform: translateY(-3px); box-shadow: 0 10px 30px rgba(0,0,0,0.3); }

    .btn-primary {
      background: linear-gradient(135deg, #a78bfa, #6d28d9);
      color: white;
    }

    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.4);
      color: white;
    }

    .stats {
      display: flex;
      justify-content: center;
      gap: 60px;
      padding: 50px 20px;
      flex-wrap: wrap;
    }

    .stat { text-align: center; }

    .stat h2 {
      font-size: 2.5rem;
      font-weight: 800;
      color: #a78bfa;
    }

    .stat p {
      font-size: 0.95rem;
      color: rgba(255,255,255,0.6);
      margin-top: 4px;
    }

    .section-title {
      text-align: center;
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 10px;
    }

    .section-sub {
      text-align: center;
      color: rgba(255,255,255,0.55);
      margin-bottom: 50px;
      font-size: 1rem;
    }

    .courses {
      padding: 60px 60px;
    }

    .cards {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 24px;
    }

    .card {
      background: rgba(255,255,255,0.06);
      border: 1px solid rgba(255,255,255,0.1);
      border-radius: 16px;
      padding: 30px;
      transition: transform 0.3s, background 0.3s;
    }

    .card:hover {
      transform: translateY(-6px);
      background: rgba(167,139,250,0.15);
    }

    .card-icon {
      font-size: 2.5rem;
      margin-bottom: 16px;
    }

    .card h3 {
      font-size: 1.2rem;
      font-weight: 700;
      margin-bottom: 10px;
    }

    .card p {
      font-size: 0.9rem;
      color: rgba(255,255,255,0.6);
      line-height: 1.6;
      margin-bottom: 20px;
    }

    .card-footer {
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 0.85rem;
      color: rgba(255,255,255,0.5);
      border-top: 1px solid rgba(255,255,255,0.1);
      padding-top: 16px;
    }

    .badge {
      background: linear-gradient(135deg, #a78bfa, #6d28d9);
      color: white;
      padding: 4px 12px;
      border-radius: 20px;
      font-size: 0.78rem;
      font-weight: 600;
    }

    .features {
      padding: 60px;
      background: rgba(255,255,255,0.02);
    }

    .feature-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 30px;
    }

    .feature {
      text-align: center;
      padding: 30px 20px;
    }

    .feature-icon {
      font-size: 2.8rem;
      margin-bottom: 16px;
    }

    .feature h3 {
      font-size: 1.1rem;
      font-weight: 700;
      margin-bottom: 10px;
    }

    .feature p {
      font-size: 0.88rem;
      color: rgba(255,255,255,0.55);
      line-height: 1.6;
    }

    footer {
      text-align: center;
      padding: 40px;
      color: rgba(255,255,255,0.35);
      font-size: 0.88rem;
      border-top: 1px solid rgba(255,255,255,0.08);
    }
  </style>
</head>
<body>

  <nav>
    <div class="logo">Study<span>Platform</span></div>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Courses</a></li>
      <li><a href="#">Practice</a></li>
      <li><a href="#">Leaderboard</a></li>
      <li><a href="#">About</a></li>
    </ul>
  </nav>

  <section class="hero">
    <h1>Learn Smarter,<br/><span>Not Harder</span></h1>
    <p>An intelligent study platform that adapts to your learning pace. Master any subject with personalized quizzes, progress tracking, and AI-powered recommendations.</p>
    <div class="btn-group">
      <a href="#" class="btn btn-primary">Get Started Free</a>
      <a href="#" class="btn btn-outline">Explore Courses</a>
    </div>
  </section>

  <section class="stats">
    <div class="stat"><h2>12,000+</h2><p>Active Students</p></div>
    <div class="stat"><h2>350+</h2><p>Courses Available</p></div>
    <div class="stat"><h2>98%</h2><p>Satisfaction Rate</p></div>
    <div class="stat"><h2>50+</h2><p>Expert Instructors</p></div>
  </section>

  <section class="courses">
    <h2 class="section-title">Popular Courses</h2>
    <p class="section-sub">Pick up where your curiosity takes you</p>
    <div class="cards">

      <div class="card">
        <div class="card-icon">🧮</div>
        <h3>Mathematics</h3>
        <p>From algebra to calculus — build a rock-solid foundation with step-by-step problem solving.</p>
        <div class="card-footer">
          <span>42 lessons</span>
          <span class="badge">Beginner</span>
        </div>
      </div>

      <div class="card">
        <div class="card-icon">⚡</div>
        <h3>Physics</h3>
        <p>Understand the laws of the universe through interactive simulations and real-world examples.</p>
        <div class="card-footer">
          <span>38 lessons</span>
          <span class="badge">Intermediate</span>
        </div>
      </div>

      <div class="card">
        <div class="card-icon">🧪</div>
        <h3>Chemistry</h3>
        <p>Dive into atomic structure, reactions, and organic chemistry with visual explanations.</p>
        <div class="card-footer">
          <span>35 lessons</span>
          <span class="badge">Intermediate</span>
        </div>
      </div>

      <div class="card">
        <div class="card-icon">💻</div>
        <h3>Computer Science</h3>
        <p>Learn programming, data structures, algorithms, and software development from scratch.</p>
        <div class="card-footer">
          <span>60 lessons</span>
          <span class="badge">All Levels</span>
        </div>
      </div>

    </div>
  </section>

  <section class="features">
    <h2 class="section-title">Why StudyPlatform?</h2>
    <p class="section-sub">Everything you need to succeed, in one place</p>
    <div class="feature-grid">
      <div class="feature">
        <div class="feature-icon">🤖</div>
        <h3>AI-Powered Learning</h3>
        <p>Our system adapts difficulty based on your performance, keeping you challenged but never overwhelmed.</p>
      </div>
      <div class="feature">
        <div class="feature-icon">📊</div>
        <h3>Progress Tracking</h3>
        <p>Visual dashboards show your improvement over time, helping you stay motivated and on track.</p>
      </div>
      <div class="feature">
        <div class="feature-icon">🏆</div>
        <h3>Gamified Experience</h3>
        <p>Earn points, unlock badges, and compete on leaderboards to make learning genuinely fun.</p>
      </div>
      <div class="feature">
        <div class="feature-icon">📱</div>
        <h3>Study Anywhere</h3>
        <p>Fully responsive design means you can learn from your phone, tablet, or laptop seamlessly.</p>
      </div>
    </div>
  </section>

  <footer>
    &copy; 2026 StudyPlatform &mdash; B.Tech IT Project &mdash; Built with Maven &amp; Deployed via Jenkins
  </footer>

</body>
</html>