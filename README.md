# kashif@genai:~$

Personal profile site for **Kashif Ali Siddiqui** — rendered as a terminal. The page presents itself as a shell session (`kashif@genai`), with a sidebar `ls pages/` listing of markdown files and content fetched and rendered client-side from raw markdown — no build step, no framework.

## Structure

```
me/
├── index.html      # terminal viewer (fetches + renders pages/*.md client-side)
├── pages/          # the rendered site content (7 markdown files)
│   ├── index.md          # home — identity header + ASCII self-portraits
│   ├── about.md          # full profile / whoami
│   ├── experiences.md    # professional experience
│   ├── projects.md       # projects
│   ├── skills.md         # skills & competencies
│   ├── education.md      # education
│   └── certifications.md # certifications
├── data/           # knowledgebase — source of truth for content edits
├── docs/           # ASCII portrait sources (me-picture-*.txt), DESIGN.md, Me.png
├── prototypes/     # design prototypes (terminal.html is the chosen design)
├── serve.sh        # local server (Linux/macOS)
└── serve.bat       # local server (Windows)
```

## Run locally

Any static file server works. From the repo root:

```bash
./serve.sh          # Linux/macOS
serve.bat           # Windows
python -m http.server 8000   # or just this
```

Then open **http://localhost:8000/**

## Features

- **Client-side markdown rendering** — [marked@12](https://github.com/markedjs/marked) fetches `pages/*.md` and renders with zero build tooling
- **Terminal aesthetic** — prompt bar with blinking cursor, `whoami` hero headers, `ls pages/` navigation, boot-sequence loading states
- **Dark / light theme toggle** — persisted via `localStorage` (`proto-theme` key)
- **Card grids** — experience and project entries render as hoverable terminal cards
- **ASCII self-portraits** — hand-drawn portraits rendered in styled `<pre>` blocks on the home page
- **Responsive** — sidebar collapses to a wrapping chip row below 900px

## Hosting (GitHub Pages)

The viewer lives at the repo root, so standard GitHub Pages works with no configuration: enable Pages on the branch, and `index.html` + `pages/` deploy as-is.

## Updating content

Edit the markdown files in `pages/` — changes appear on reload, no build step. For substantive content changes, edit `data/` first (the source of truth), then mirror into `pages/`.

## Credits

© 2026 Kashif Ali Siddiqui · [linkedin/in/ksiddiqui](https://www.linkedin.com/in/ksiddiqui/) · [github/ksiddiqui](https://github.com/ksiddiqui)
