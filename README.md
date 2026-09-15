# kashif@genai:~$

Personal profile site for **Kashif Ali Siddiqui** — rendered as a terminal. The page presents itself as a shell session, with a sidebar `ls data/` listing of JSON files and content fetched and rendered client-side — no build step, no framework, no markdown parser.

## Structure

```
me/
├── index.html      # terminal viewer (fetches data/*.json, builds DOM per page)
├── data/           # the site content — edit these JSON files
│   ├── index.json          # home — identity blockquotes + ASCII self-portraits
│   ├── about.json          # full profile / whoami
│   ├── experiences.json    # professional experience (highlights, timeline, roles)
│   ├── projects.json       # projects (card groups + gallery table)
│   ├── skills.json         # skills & competencies
│   ├── education.json      # education, IELTS, faculty, learning
│   └── certifications.json  # credentials & languages
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

Opening `index.html` directly via `file://` will not work — browsers block `fetch()` of local files (CORS). Use a server.

## Features

- **Client-side JSON rendering** — `index.html` fetches the page's JSON from `data/` and builds the DOM with a dedicated renderer per page; zero build tooling, zero dependencies
- **Terminal aesthetic** — prompt bar with blinking cursor, `$ whoami` hero headers, `ls data/` navigation, boot-sequence loading states
- **Dark / light theme toggle** — persisted via `localStorage` (`proto-theme` key)
- **Card grids** — engagement highlights and project entries render as hoverable terminal cards
- **Project tabs** — Gallery / Details views toggle client-side
- **Career timeline jumps** — clicking a timeline row smooth-scrolls to that role's section; company links open in a new tab
- **ASCII self-portraits** — hand-drawn portraits in `docs/me-picture-*.txt`, fetched and rendered in styled `<pre>` blocks on the home page
- **Responsive** — sidebar collapses to a wrapping chip row below 900px

## Hosting (GitHub Pages)

The viewer lives at the repo root, so standard GitHub Pages works with no configuration: enable Pages on the branch, and `index.html` + `data/` + `docs/` deploy as-is.

## Updating content

Edit the JSON files in `data/` — that is the only place content lives. Changes appear on reload, no build step.

Each file's schema is page-specific (e.g. `experiences.json` has `highlights`, `timeline`, `roles`; `projects.json` has card `groups` and the `gallery` table). The renderer for each page lives in `index.html`. Limited inline markup is supported in text fields: `**bold**` and `*italic*`.

The ASCII portraits stay in `docs/me-picture-*.txt` and are referenced by path from `data/index.json`.

## Credits

© 2026 Kashif Ali Siddiqui · [linkedin/in/ksiddiqui](https://www.linkedin.com/in/ksiddiqui/) · [github/ksiddiqui](https://github.com/ksiddiqui)
