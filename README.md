# 🧁 Tanuja Jadhav — Developer Portfolio ("Dessert Shop" Theme)

> **Backend engineer. Baking systems that scale 🧁**

A delightful, high-performance, single-page developer portfolio designed like an artisanal bakery display case: sweet, playful, polished, and blazingly fast.

Built for **Tanuja Jadhav**, a 3rd-year BE Computer Engineering student specializing in Backend Systems, GoLang, Apache Kafka, Distributed Architectures, and AI/ML.

---

## 🍰 Highlights & Features

- **Procedural 3D Elements (Three.js)**:
  - **Hero 3D Cupcake**: Interactive procedural 3D cupcake (pleated ribbed liner, chocolate sponge, glossy strawberry swirl frosting, ruby cherry, and colorful sprinkles). Reacts to mouse parallax tilt, spins with scroll, and jiggles with confetti bursts on click.
  - **Floating Sweets Background**: Lightweight 3D donuts, macarons, and sprinkle rods gently tumbling in the background canvas (<45 objects, hardware-accelerated, respects `prefers-reduced-motion`).
  - **Skills Candy Orbit**: Interactive 3D planetary ring of candies representing tech skills (Go, Kafka, Docker, PyTorch, Kubernetes) that expand on hover and display ingredient profiles.
  - **Zero-Bloat Fallback**: Zero external heavy 3D `.glb` files to download—all geometries are generated via pure code! Graceful SVG fallback if WebGL is unavailable.
- **Aesthetic "Dessert Shop" Theme**:
  - Curated bakery palette: strawberry pink (`#FF8FAB`), vanilla cream (`#FFF6E9`), chocolate mocha (`#5A3825`), mint (`#B8F2E6`), golden caramel (`#E0A96D`), and blueberry (`#7B6CF6`).
  - Frosted glass cards with backdrop blur, chunky 3D press buttons, and SVG wavy frosting-drip dividers.
  - **Chocolate Mode (Dark Mode)**: Switch between daylight Vanilla Cream and decadent rich Dark Chocolate with pastel highlights.
  - Custom dessert sprinkle cursor with smooth lerping.
- **Smooth GSAP Scroll Animations**:
  - Live frosting progress bar tracking scroll depth along the top.
  - Animated numeric stats counters (projects baked, commits glazed, hackathons conquered).
  - Vertical recipe timeline that dynamically draws its frosting line on scroll.
  - 3D vanilla tilt effect on project menu cards.
- **Flagship Project**:
  - Dedicated showcase for **DeepSafe / DiverSentinel**: AI-powered autonomous diver distress detection and USBL acoustic localization system engineered for the **Smart India Hackathon (SIH)**.
- **Useless Software Lab & Interactive Mini-Game**:
  - Playful cards with a humorous "Usefulness Meter: 0%".
  - **Falling Cupcake Catcher**: Built-in 2D HTML5 canvas game with score, combo streak, and offline Web Audio API procedural sound chimes.
- **Easter Eggs**:
  - Tap the hero cupcake for an explosion of pastel sprinkle confetti.
  - Secret **Konami Code** (`↑ ↑ ↓ ↓ ← → ← → B A`) triggers a full-screen donut and confetti storm!

---

## 🛠️ Tech Stack (Strict & Ultra Lightweight)

- **Build Tool**: [Vite](https://vitejs.dev/)
- **Core**: Vanilla HTML5, Vanilla CSS3 (Custom Properties & Responsive Grid/Flexbox), ES6+ JavaScript
- **3D Graphics**: [Three.js](https://threejs.org/) (Procedural primitives only)
- **Scroll & UI Animations**: [GSAP](https://greensock.com/gsap/) + [ScrollTrigger](https://greensock.com/scrolltrigger/)
- **Confetti**: [canvas-confetti](https://www.npmjs.com/package/canvas-confetti)
- **Audio**: Web Audio API (procedural synthesis, no audio file downloads required)
- **Fonts**: [Fredoka](https://fonts.google.com/specimen/Fredoka) (Display) & [Poppins](https://fonts.google.com/specimen/Poppins) (Body)

---

## 🚀 Getting Started

### 1. Prerequisites
Ensure you have [Node.js](https://nodejs.org/) (v18 or higher recommended) installed on your machine.

### 2. Installation
Open your terminal in the project directory and run:

```bash
npm install
```

### 3. Run Development Server
Start the Vite local development server:

```bash
npm run dev
```

Visit the displayed local URL (typically `http://localhost:5173`) in your browser to view the bakery!

### 4. Build for Production
Create an optimized production bundle in the `/dist` directory:

```bash
npm run build
```

To preview the production build locally:

```bash
npm run preview
```

---

## 📝 Customizing Your Information (Data-Driven)

All portfolio text, projects, skills, and links are centralized in a single file:  
👉 **`src/data.js`**

Open `src/data.js` to customize any of the following:

| Section | What to edit in `src/data.js` |
|---|---|
| **Personal Info** | Name, tagline, location, status badge, resume link |
| **Typing Roles** | Array of strings in `personalInfo.typingRoles` |
| **Social Links** | GitHub, LinkedIn, Email, LeetCode URLs in `personalInfo.socials` |
| **Stats Counters** | Projects baked, commits, hackathon counts in `personalInfo.stats` |
| **Skills & Ingredients** | Categorized tools, descriptions, and flavor notes in `skillCategories` |
| **Projects (The Menu)** | Flagship SIH project details & menu cards in `projects` |
| **Useless Software** | Gag projects, emojis, and punchlines in `uselessProjects` |
| **Timeline (The Recipe)** | Education, hackathons, and milestones in `timeline` |

---

## 🌐 Deployment Instructions

### Deploy to Vercel (Recommended)
1. Push your repository to GitHub.
2. Sign in to [Vercel](https://vercel.com/) and click **"Add New Project"**.
3. Import your GitHub repository.
4. Vercel automatically detects Vite:
   - **Framework Preset**: Vite
   - **Build Command**: `npm run build`
   - **Output Directory**: `dist`
5. Click **Deploy**!

### Deploy to GitHub Pages
1. In `vite.config.js`, add the `base` property with your repository name:
   ```js
   export default defineConfig({
     base: '/<YOUR-REPO-NAME>/',
     // ... rest of config
   });
   ```
2. Build and publish using `gh-pages`:
   ```bash
   npm install -D gh-pages
   ```
   Add a script to `package.json`:
   ```json
   "scripts": {
     "deploy": "vite build && gh-pages -d dist"
   }
   ```
   Run:
   ```bash
   npm run deploy
   ```

### Deploy to Netlify
1. Connect your GitHub repository in [Netlify](https://www.netlify.com/).
2. Set **Build command** to `npm run build`.
3. Set **Publish directory** to `dist`.
4. Deploy!

---

## 🎨 Keyboard Shortcuts & Easter Eggs

- **Konami Code**: Press `↑` `↑` `↓` `↓` `←` `→` `←` `→` `B` `A` anywhere on the page to unleash a celebratory donut storm!
- **Cupcake Tap**: Click the 3D cupcake in the hero section to trigger a sprinkle burst and playful jiggle.
- **Cupcake Catcher Mini-Game**: Playable via mouse, touch drag, or `ArrowLeft` / `ArrowRight` / `A` / `D` keys.

---

## 📄 License
Created with ❤️ by **Tanuja Jadhav**. Free to customize and use for personal portfolio showcase.
