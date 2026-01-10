# LibreScienceTool Website

Official website for LibreScienceTool - providing open source software and open hardware for engineering science.

## Structure

This website is built using Jekyll (built into GitHub Pages) for easy maintenance and consistent layouts.

```
website/
├── _layouts/          # Reusable page layouts
│   └── default.html   # Main layout with header and footer
├── _includes/         # Reusable components
│   ├── header.html    # Navigation bar
│   └── footer.html    # Footer
├── css/              # Stylesheets
│   └── style.css     # Main CSS file
├── software/         # Open source software section
│   └── index.html
├── hardware/         # Open hardware section (under construction)
│   └── index.html
├── blog/            # Blog posts
│   └── index.html
├── about/           # About page
│   └── index.html
├── index.html       # Homepage
├── _config.yml      # Jekyll configuration
├── HOW-TO-ADD-SOFTWARE.md      # Guide for adding projects
└── HOW-TO-ADD-BLOG-POSTS.md    # Guide for adding blog posts
```

## How to Use

### Local Development

**Quick Start (Windows):**

1. Run `.\install-jekyll.ps1` (first time only)
2. Run `.\start-preview.ps1` to preview your site
3. View at: `http://localhost:4000`

See [PREVIEW.md](PREVIEW.md) for detailed instructions and troubleshooting.

**Manual Setup:**

1. Install Jekyll (if not already installed):
   ```bash
   gem install jekyll bundler
   ```

2. Run locally:
   ```bash
   jekyll serve
   ```

3. View at: `http://localhost:4000`

### Adding Content

#### Add Software Projects

See the complete guide: **[HOW-TO-ADD-SOFTWARE.md](HOW-TO-ADD-SOFTWARE.md)**

Quick summary:
1. Open `software/index.html`
2. Add a new project card with title, description, tags, and links
3. Preview and publish

#### Add Blog Posts

See the complete guide: **[HOW-TO-ADD-BLOG-POSTS.md](HOW-TO-ADD-BLOG-POSTS.md)**

Quick summary:
1. Create a new HTML file in `blog/` directory
2. Add post card to `blog/index.html`
3. Write your content using the template
4. Preview and publish

### Customization

- **Colors**: Edit CSS variables in `css/style.css` (`:root` section)
- **Navigation**: Edit `_includes/header.html`
- **Footer**: Edit `_includes/footer.html`
- **Layout**: Edit `_layouts/default.html`

## GitHub Pages Deployment

This site is ready for GitHub Pages:

1. Push to your repository
2. Go to Settings > Pages
3. Select your branch (usually `main`)
4. Your site will be live at `https://yourusername.github.io/website/`

## Technologies Used

- **Jekyll**: Static site generator (built into GitHub Pages)
- **HTML5**: Structure
- **CSS3**: Styling with CSS Grid and Flexbox
- **Responsive Design**: Mobile-friendly layout

## License

The website code is open source. Individual projects may have different licenses.