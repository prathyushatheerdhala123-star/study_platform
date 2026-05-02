<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Portfolio</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      font-family: 'Segoe UI', sans-serif;
      background: #0a0a0a;
      color: white;
    }

    nav {
      position: fixed;
      top: 0; left: 0; right: 0;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 80px;
      background: rgba(10,10,10,0.9);
      backdrop-filter: blur(10px);
      z-index: 100;
      border-bottom: 1px solid rgba(255,255,255,0.05);
    }

    .logo {
      font-size: 1.5rem;
      font-weight: 800;
      color: #00ff88;
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 35px;
    }

    nav ul li a {
      color: rgba(255,255,255,0.7);
      text-decoration: none;
      font-size: 0.9rem;
      letter-spacing: 1px;
      text-transform: uppercase;
      transition: color 0.3s;
    }

    nav ul li a:hover { color: #00ff88; }

    .hero {
      min-height: 100vh;
      display: flex;
      align-items: center;
      padding: 0 80px;
      background: radial-gradient(ellipse at 70% 50%, rgba(0,255,136,0.08) 0%, transparent 60%);
    }

    .hero-content { max-width: 650px; }

    .hero-content .greeting {
      color: #00ff88;
      font-size: 1rem;
      letter-spacing: 3px;
      text-transform: uppercase;
      margin-bottom: 20px;
    }

    .hero-content h1 {
      font-size: 4rem;
      font-weight: 900;
      line-height: 1.1;
      margin-bottom: 20px;
    }

    .hero-content h1 span { color: #00ff88; }

    .hero-content .role {
      font-size: 1.3rem;
      color: rgba(255,255,255,0.5);
      margin-bottom: 30px;
    }

    .hero-content p {
      font-size: 1rem;
      color: rgba(255,255,255,0.55);
      line-height: 1.8;
      margin-bottom: 40px;
    }

    .btn-group { display: flex; gap: 16px; }

    .btn {
      padding: 14px 36px;
      border-radius: 4px;
      font-size: 0.95rem;
      font-weight: 600;
      cursor: pointer;
      border: none;
      text-decoration: none;
      transition: all 0.3s;
      letter-spacing: 0.5px;
    }

    .btn-green {
      background: #00ff88;
      color: #0a0a0a;
    }

    .btn-green:hover { background: #00cc6a; transform: translateY(-2px); }

    .btn-ghost {
      background: transparent;
      border: 1px solid rgba(255,255,255,0.3);
      color: white;
    }

    .btn-ghost:hover { border-color: #00ff88; color: #00ff88; }

    .about {
      padding: 100px 80px;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 80px;
      align-items: center;
      background: #0f0f0f;
    }

    .about h2 {
      font-size: 2.5rem;
      font-weight: 800;
      margin-bottom: 20px;
    }

    .about h2 span { color: #00ff88; }

    .about p {
      color: rgba(255,255,255,0.6);
      line-height: 1.8;
      margin-bottom: 16px;
      font-size: 0.98rem;
    }

    .skills-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 16px;
    }

    .skill-item {
      background: rgba(255,255,255,0.04);
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 8px;
      padding: 16px 20px;
    }

    .skill-name {
      display: flex;
      justify-content: space-between;
      margin-bottom: 10px;
      font-size: 0.88rem;
      color: rgba(255,255,255,0.8);
    }

    .skill-name span:last-child { color: #00ff88; }

    .skill-bar {
      height: 4px;
      background: rgba(255,255,255,0.08);
      border-radius: 2px;
      overflow: hidden;
    }

    .skill-fill {
      height: 100%;
      background: linear-gradient(90deg, #00ff88, #00cc6a);
      border-radius: 2px;
    }

    .projects {
      padding: 100px 80px;
    }

    .section-header {
      text-align: center;
      margin-bottom: 60px;
    }

    .section-header h2 {
      font-size: 2.5rem;
      font-weight: 800;
      margin-bottom: 12px;
    }

    .section-header h2 span { color: #00ff88; }

    .section-header p {
      color: rgba(255,255,255,0.5);
      font-size: 1rem;
    }

    .project-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 24px;
    }

    .project-card {
      background: #0f0f0f;
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 12px;
      overflow: hidden;
      transition: transform 0.3s, border-color 0.3s;
    }

    .project-card:hover {
      transform: translateY(-8px);
      border-color: #00ff88;
    }

    .project-img {
      height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 4rem;
    }

    .p1 { background: linear-gradient(135deg, #1a1a2e, #16213e); }
    .p2 { background: linear-gradient(135deg, #0d1117, #161b22); }
    .p3 { background: linear-gradient(135deg, #1a0a2e, #2d1b69); }

    .project-info { padding: 24px; }

    .project-info h3 {
      font-size: 1.1rem;
      font-weight: 700;
      margin-bottom: 10px;
    }

    .project-info p {
      color: rgba(255,255,255,0.55);
      font-size: 0.88rem;
      line-height: 1.6;
      margin-bottom: 16px;
    }

    .tags { display: flex; gap: 8px; flex-wrap: wrap; }

    .tag {
      background: rgba(0,255,136,0.1);
      color: #00ff88;
      border: 1px solid rgba(0,255,136,0.3);
      padding: 4px 12px;
      border-radius: 20px;
      font-size: 0.75rem;
    }

    .contact {
      padding: 100px 80px;
      background: #0f0f0f;
      text-align: center;
    }

    .contact h2 {
      font-size: 2.5rem;
      font-weight: 800;
      margin-bottom: 16px;
    }

    .contact h2 span { color: #00ff88; }

    .contact p {
      color: rgba(255,255,255,0.55);
      margin-bottom: 40px;
      font-size: 1rem;
    }

    .contact-cards {
      display: flex;
      justify-content: center;
      gap: 24px;
      flex-wrap: wrap;
    }

    .contact-card {
      background: rgba(255,255,255,0.04);
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 12px;
      padding: 30px 40px;
      transition: border-color 0.3s;
    }

    .contact-card:hover { border-color: #00ff88; }

    .contact-card .icon { font-size: 2rem; margin-bottom: 12px; }

    .contact-card h4 {
      font-size: 0.85rem;
      color: rgba(255,255,255,0.4);
      text-transform: uppercase;
      letter-spacing: 1px;
      margin-bottom: 8px;
    }

    .contact-card p {
      color: white;
      font-size: 0.95rem;
      margin: 0;
    }

    footer {
      text-align: center;
      padding: 30px;
      color: rgba(255,255,255,0.25);
      font-size: 0.85rem;
      border-top: 1px solid rgba(255,255,255,0.05);
    }
  </style>
</head>
<body>

  <nav>
    <div class="logo">&lt;Prathyusha/&gt;</div>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Projects</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>

  <section class="hero">
    <div class="hero-content">
      <p class="greeting">👋 Hello, I'm</p>
      <h1>Rupa<br/><span>Gayatri</span></h1>
      <p class="role">B.Tech IT Student &amp; Aspiring Developer</p>
      <p>Passionate about building intelligent systems and web applications. Currently exploring DevOps, Machine Learning, and Full Stack Development.</p>
      <div class="btn-group">
        <a href="#" class="btn btn-green">View My Work</a>
        <a href="#" class="btn btn-ghost">Contact Me</a>
      </div>
    </div>
  </section>

  <section class="about">
    <div>
      <h2>About <span>Me</span></h2>
      <p>I'm a second-year B.Tech Information Technology student at IARE, passionate about technology and problem-solving.</p>
      <p>I've worked on projects involving Reinforcement Learning, intelligent tutoring systems, and now DevOps pipelines using Jenkins, Maven, and Tomcat.</p>
      <p>I enjoy turning complex ideas into clean, working software.</p>
    </div>
    <div class="skills-grid">
      <div class="skill-item">
        <div class="skill-name"><span>Java</span><span>80%</span></div>
        <div class="skill-bar"><div class="skill-fill" style="width:80%"></div></div>
      </div>
      <div class="skill-item">
        <div class="skill-name"><span>Python</span><span>85%</span></div>
        <div class="skill-bar"><div class="skill-fill" style="width:85%"></div></div>
      </div>
      <div class="skill-item">
        <div class="skill-name"><span>DevOps</span><span>70%</span></div>
        <div class="skill-bar"><div class="skill-fill" style="width:70%"></div></div>
      </div>
      <div class="skill-item">
        <div class="skill-name"><span>Machine Learning</span><span>75%</span></div>
        <div class="skill-bar"><div class="skill-fill" style="width:75%"></div></div>
      </div>
      <div class="skill-item">
        <div class="skill-name"><span>Web Dev</span><span>78%</span></div>
        <div class="skill-bar"><div class="skill-fill" style="width:78%"></div></div>
      </div>
      <div class="skill-item">
        <div class="skill-name"><span>Git &amp; GitHub</span><span>82%</span></div>
        <div class="skill-bar"><div class="skill-fill" style="width:82%"></div></div>
      </div>
    </div>
  </section>

  <section class="projects">
    <div class="section-header">
      <h2>My <span>Projects</span></h2>
      <p>Things I've built and learned from</p>
    </div>
    <div class="project-grid">
      <div class="project-card">
        <div class="project-img p1">🤖</div>
        <div class="project-info">
          <h3>RL Intelligent Tutor</h3>
          <p>A reinforcement learning based tutoring system that adapts question difficulty based on student performance using Q-Learning.</p>
          <div class="tags">
            <span class="tag">Python</span>
            <span class="tag">Streamlit</span>
            <span class="tag">Q-Learning</span>
          </div>
        </div>
      </div>
      <div class="project-card">
        <div class="project-img p2">⚙️</div>
        <div class="project-info">
          <h3>DevOps CI/CD Pipeline</h3>
          <p>A complete CI/CD pipeline using Jenkins, Maven, Git, GitHub and Apache Tomcat to automate build and deployment.</p>
          <div class="tags">
            <span class="tag">Jenkins</span>
            <span class="tag">Maven</span>
            <span class="tag">Tomcat</span>
          </div>
        </div>
      </div>
      <div class="project-card">
        <div class="project-img p3">🌐</div>
        <div class="project-info">
          <h3>Study Platform</h3>
          <p>An adaptive web-based learning platform with subject-wise quizzes, difficulty levels, and real-time performance tracking.</p>
          <div class="tags">
            <span class="tag">Java</span>
            <span class="tag">JSP</span>
            <span class="tag">HTML/CSS</span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="contact">
    <h2>Get In <span>Touch</span></h2>
    <p>Feel free to reach out for collaborations or just a friendly hello</p>
    <div class="contact-cards">
      <div class="contact-card">
        <div class="icon">📧</div>
        <h4>Email</h4>
        <p>prathyusha.theerdhala123@gmail.com</p>
      </div>
      <div class="contact-card">
        <div class="icon">🎓</div>
        <h4>College</h4>
        <p>IARE, Hyderabad</p>
      </div>
      <div class="contact-card">
        <div class="icon">💻</div>
        <h4>GitHub</h4>
        <p>prathyushatheerdhala123-star</p>
      </div>
    </div>
  </section>

  <footer>
    &copy; 2026 Gayatri &mdash; Built with Maven &amp; Deployed via Jenkins &amp; Tomcat
  </footer>

</body>
</html>
