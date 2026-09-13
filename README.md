# Kashif Ali Siddiqui — Professional Profile

> **GenAI • Architecture • Cloud** | Islamabad, Pakistan

A digital replica of my [LinkedIn profile](https://www.linkedin.com/in/ksiddiqui/), built as a static site with raw Markdown pages and a responsive HTML wrapper.

---

## 🚀 Quick Access

| Format | Link | Description |
|--------|------|-------------|
| 📄 **Markdown Index** | [`pages/index.md`](pages/index.md) | Raw profile in Markdown — ideal for reading/editing source |
| 🌐 **HTML Viewer** | [`index.html`](index.html) | Styled, interactive browser view |
| 💼 **LinkedIn Profile** | [linkedin.com/in/ksiddiqui](https://www.linkedin.com/in/ksiddiqui/) | Original profile on LinkedIn |

---

## 📁 Project Structure

.
├── README.md              # This file
├── index.html             # HTML viewer — responsive, HTMX, themes, animations
├── pages/                 # Markdown source files (the raw profile)
│   ├── index.md           # Main profile — about, focus areas, quick links
│   ├── experiences.md     # Professional experience and career timeline
│   ├── projects.md        # Featured projects and open source work
│   ├── skills.md          # Tech stack, programming languages, tools
│   ├── education.md       # Academic background and training
│   └── certifications.md  # Professional certifications and credentials

Each Markdown page links to its parent and siblings, creating a navigable document tree.

---

## 🎨 HTML Viewer Features


- The HTML viewer (`index.html`) renders the Markdown pages seamlessly in the browser with:
- **5 VSCode themes** — Tokyo Night, One Dark Pro, Dracula, Material, Solarized Light
- **Dark & light mode** — Toggle between themes with the theme selector
- **Responsive design** — Mobile-first layout, adapts to all screen sizes and orientations
- **Smooth animations** — Fade-ins, slide-ins, floating background gradients, scroll indicators
- **Syntax highlighting** — Code blocks are highlighted via Highlight.js
- **Swipe navigation** — Swipe left/right on mobile to navigate between pages
- **Markdown rendering** — Uses [markdown-it](https://github.com/markdown-it/markdown-it) for full Markdown support (tables, blockquotes, code blocks, links, etc.)

---

## 🖥️ Running Locally

### Option 1: Open HTML directly
1. Open `index.html` in your browser
2. The viewer will load Markdown from the `pages/` directory automatically

> **Note:** Some browsers may block local file access for HTMX fetches. If content doesn't load:
> - Use a local server (Option 2 below), or
> - Use Chrome with `--allow-file-access-from-files` flag

### Option 2: Serve with a local server
```bash
# Using Python
python -m http.server 8000

# Using Node.js
npx serve .

# Using Go
go run github.com/cortesi/modd/cmd/modd@latest
```

Then open `http://localhost:8000/` in your browser.

---

## ☁️ Hosting on GitHub
The HTML viewer can be hosted on GitHub for free using GitHub Pages. Since `index.html` is in the repo root, this is the simplest setup.

### Method 1: GitHub Pages from root (Recommended — 2 minutes setup)

1. Create a new repository on GitHub:
   ```bash
   gh repo create ksiddiqui-profile --public
   ```

2. Push the current code:
   ```bash
   git init
   git add .
   git commit -m "Initial profile"
   git branch -M main
   git push -u origin main
   ```

3. Go to **Settings → Pages** in your GitHub repo.
4. Set **Source** to `main` branch, `/ (root)` folder.
5. Your profile will be live at: `https://ksiddiqui.github.io/ksiddiqui-profile/`

That's it! GitHub Pages will automatically serve `index.html` and all files in `pages/` from the root.

### Method 2: Project Website (for custom domain)

1. Use a `docs/` folder instead of root:
   - Move `index.html` and `pages/` into a `docs/` folder
   - Enable **Settings → Pages → Source: main branch /docs folder**
2. Your profile will be at `https://ksiddiqui.github.io/ksiddiqui-profile/`

### Method 3: User/Organization Site

For a user site (available at `https://ksiddiqui.github.io/`):
1. Create a repo named `ksiddiqui.github.io`
2. Push the code there
3. Enable GitHub Pages from root

---

## 🔧 Updating the Profile

### Adding a new section
1. Create a new Markdown file in `pages/` (e.g., `speaking.md`)
2. Add a navigation link in `index.html`:
   ```html
   <a href="#" hx-get="pages/speaking.md" hx-target="#content" hx-push-url="true" hx-swap="innerHTML">Speaking</a>
   ```
3. Add a link to the new page from `pages/index.md`

Edit the `[data-theme="..."]` blocks in the `<style>` section of `index.html`. Each theme defines CSS variables for:
- `--bg-primary`, `--bg-secondary`, `--bg-card`, `--bg-card-border`
- `--text-primary`, `--text-secondary`, `--text-tertiary`
- `--accent`, `--accent-hover`

### Content source
The Markdown content is sourced from:
- GitHub profile README: `https://github.com/ksiddiqui/ksiddiqui`
- LinkedIn profile: `https://www.linkedin.com/in/ksiddiqui/` (may require LinkedIn authentication for full access)

---

## 💡 Design Philosophy

This repository follows the principle: **Raw content, beautiful presentation**.

- **Markdown files** serve as the canonical, source-controlled version of the profile
- **HTML wrapper** provides a polished, interactive viewing experience
- **No build step required** — the HTML loads Markdown directly via HTMX + [markdown-it](https://github.com/markdown-it/markdown-it)
- **5 VSCode themes** match the aesthetics developers know and love
- **Fully responsive** — works on desktop, tablet, and mobile

---

## 📄 License

Feel free to fork, modify, and use as a template for your own profile!

---

**© 2025 Kashif Ali Siddiqui** | [LinkedIn](https://www.linkedin.com/in/ksiddiqui/) | [GitHub](https://github.com/ksiddiqui) | [Email](mailto:kashif.ali.siddiqui@gmail.com)
