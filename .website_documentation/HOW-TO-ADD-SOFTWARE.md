# How to Add Software Projects

This guide shows you how to add new software projects to the LibreScienceTool website.

## Quick Start

1. Open `software/index.html` in your text editor
2. Find the `<div class="project-grid">` section
3. Add a new project card using the template below
4. Save the file
5. Preview locally or push to GitHub

## Project Card Template

Copy and paste this template into the `project-grid` section:

```html
<div class="project-card">
    <h3>Your Project Name</h3>
    <div class="project-meta">Language: Python | License: MIT</div>
    <p>
        A clear, concise description of what your project does. Explain the problem
        it solves and who would benefit from using it. Keep it to 2-3 sentences.
    </p>
    <div class="project-tags">
        <span class="tag">Tag1</span>
        <span class="tag">Tag2</span>
        <span class="tag">Tag3</span>
    </div>
    <div class="project-links">
        <a href="https://github.com/yourusername/project-name" target="_blank">GitHub →</a>
        <a href="https://github.com/yourusername/project-name/wiki" target="_blank">Documentation →</a>
    </div>
</div>
```

## Step-by-Step Guide

### 1. Project Title
Replace `Your Project Name` with your actual project name.

```html
<h3>SmartLab Data Analyzer</h3>
```

### 2. Project Metadata
Update the language and license:

```html
<div class="project-meta">Language: Python | License: MIT</div>
```

Common licenses:
- MIT - Very permissive, allows commercial use
- GPL-3.0 - Copyleft, derivatives must be open source
- Apache 2.0 - Permissive with patent protection
- BSD-3-Clause - Permissive, similar to MIT

### 3. Description
Write a brief description (2-3 sentences):

```html
<p>
    A Python tool for analyzing laboratory data with built-in statistical
    analysis and visualization. Designed for researchers who need quick
    insights from experimental data without complex setup.
</p>
```

**Tips:**
- Focus on benefits, not just features
- Mention the target audience
- Keep it clear and jargon-free

### 4. Tags
Add 2-5 relevant tags:

```html
<div class="project-tags">
    <span class="tag">Data Analysis</span>
    <span class="tag">Python</span>
    <span class="tag">Science</span>
</div>
```

**Common tag categories:**
- **Technology**: Python, JavaScript, C++, Arduino, Raspberry Pi
- **Domain**: Data Analysis, IoT, Automation, Visualization
- **Type**: CLI Tool, Web App, Library, Desktop App
- **Features**: Open Source, Cross-platform, Beginner-friendly

### 5. Links
Update the GitHub URL and add additional links:

```html
<div class="project-links">
    <a href="https://github.com/yourusername/project" target="_blank">GitHub →</a>
    <a href="https://github.com/yourusername/project/wiki" target="_blank">Documentation →</a>
    <a href="https://yourusername.github.io/project/" target="_blank">Live Demo →</a>
</div>
```

**Link types you can include:**
- GitHub - Required
- Documentation - Wiki, ReadTheDocs, or docs folder
- Live Demo - For web apps
- Download - For desktop applications
- Tutorial - Getting started guide

## Complete Example

Here's a complete example of a well-formatted project card:

```html
<div class="project-card">
    <h3>SmartLab Data Analyzer</h3>
    <div class="project-meta">Language: Python | License: MIT</div>
    <p>
        A lightweight Python library for analyzing scientific data with built-in
        statistical functions and publication-ready plots. Perfect for researchers
        who want quick insights without learning complex data science frameworks.
    </p>
    <div class="project-tags">
        <span class="tag">Data Analysis</span>
        <span class="tag">Python</span>
        <span class="tag">Statistics</span>
        <span class="tag">Visualization</span>
    </div>
    <div class="project-links">
        <a href="https://github.com/matthewsmith/smartlab-analyzer" target="_blank">GitHub →</a>
        <a href="https://smartlab-analyzer.readthedocs.io" target="_blank">Documentation →</a>
        <a href="#" target="_blank">Examples →</a>
    </div>
</div>
```

## Where to Add Your Project

Open `software/index.html` and find this section:

```html
<!-- Project Grid -->
<div class="project-grid">
    <!-- Add your new project card here -->

    <!-- Existing projects below -->
    <div class="project-card">
        ...
    </div>
</div>
```

Add your new project card at the top (after the comment) so it appears first on the page.

## Tips for Great Project Cards

1. **Clear naming**: Use descriptive project names, not codenames
2. **User-focused**: Explain benefits, not just technical details
3. **Accurate tags**: Help visitors find relevant projects
4. **Working links**: Test all links before publishing
5. **License clarity**: Always include license information
6. **Keep it updated**: Remove or update deprecated projects

## Testing Your Changes

### Local Preview (with Jekyll)
```bash
jekyll serve
```
Visit: http://localhost:4000/software/

### Local Preview (simple)
Double-click `start-preview-now.bat`
Visit: http://localhost:8000/software/index.html

### Publishing
```bash
git add software/index.html
git commit -m "Add new software project: [Project Name]"
git push
```

Your changes will be live on GitHub Pages within a few minutes.

## Need Help?

- Check existing project cards in `software/index.html` for examples
- Preview locally before pushing to ensure formatting looks good
- Keep descriptions concise and focused on user benefits
