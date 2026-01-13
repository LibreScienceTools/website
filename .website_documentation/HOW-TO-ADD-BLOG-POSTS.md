# How to Add Blog Posts

This guide shows you how to add new blog posts to the LibreScienceTool website.

## Quick Start

1. Create a new HTML file in the `blog/` directory
2. Copy the blog post template
3. Write your content
4. Add a link to the post in `blog/index.html`
5. Preview and publish

## Method 1: Simple Blog Posts (Recommended for Starting)

For simple blog posts, add them directly to `blog/index.html`.

### Step 1: Open blog/index.html

Find the `<div class="blog-list">` section.

### Step 2: Add a Blog Post Card

Use this template:

```html
<article class="blog-post">
    <h2><a href="post-filename.html">Your Blog Post Title</a></h2>
    <div class="blog-date">January 10, 2026</div>
    <p class="blog-excerpt">
        A brief 2-3 sentence summary of your blog post. This should give readers
        a clear idea of what the post is about and why they should read it.
    </p>
    <a href="post-filename.html" class="read-more">Read more →</a>
</article>
```

### Step 3: Create the Full Blog Post

Create a new file: `blog/your-post-title.html`

```html
---
layout: default
title: Your Blog Post Title - LibreScienceTool
description: Brief description for SEO
---

<section class="content-section">
    <div class="container">
        <div style="max-width: 800px; margin: 0 auto;">
            <article class="blog-post">
                <h1>Your Blog Post Title</h1>
                <div class="blog-date">January 10, 2026</div>

                <div style="line-height: 1.8; color: #4b5563;">
                    <p>
                        Your blog post content goes here. Write naturally and clearly.
                    </p>

                    <h2>Section Heading</h2>
                    <p>
                        More content...
                    </p>

                    <h3>Subsection</h3>
                    <p>
                        Even more content...
                    </p>

                    <h2>Conclusion</h2>
                    <p>
                        Wrap up your thoughts...
                    </p>
                </div>

                <div style="margin-top: 3rem; padding-top: 2rem; border-top: 1px solid #e2e8f0;">
                    <a href="index.html" style="color: #2563eb; text-decoration: none;">
                        ← Back to all posts
                    </a>
                </div>
            </article>
        </div>
    </div>
</section>
```

## Method 2: Using Jekyll for Blog Posts (Advanced)

If you want to use Jekyll's blog features, create posts in the `_posts/` directory.

### Step 1: Create _posts directory

```bash
mkdir _posts
```

### Step 2: Create a post file

File naming convention: `YYYY-MM-DD-title-with-hyphens.md`

Example: `_posts/2026-01-10-welcome-to-libresciencetool.md`

### Step 3: Write your post in Markdown

```markdown
---
layout: default
title: Welcome to LibreScienceTool
date: 2026-01-10
description: Introduction to the LibreScienceTool project
---

# Welcome to LibreScienceTool

This is my first blog post about the LibreScienceTool project.

## Why I Started This Project

I've benefited greatly from open source software throughout my career...

## What's Next

In upcoming posts, I'll share...

---

[Back to all posts]({{ site.baseurl }}/blog/)
```

## Blog Post Template (Complete Example)

Here's a complete example for a blog post file:

**File:** `blog/welcome.html`

```html
---
layout: default
title: Welcome to LibreScienceTool - Blog
description: Introduction to the LibreScienceTool project and its goals
---

<section class="content-section">
    <div class="container">
        <div style="max-width: 800px; margin: 0 auto;">
            <article class="blog-post">
                <h1>Welcome to LibreScienceTool</h1>
                <div class="blog-date">January 10, 2026</div>

                <div style="line-height: 1.8; color: #4b5563;">
                    <p>
                        I'm excited to launch LibreScienceTool, my contribution to the open
                        science community. This project is born from years of benefiting from
                        open source software and wanting to give back.
                    </p>

                    <h2>The Mission</h2>
                    <p>
                        LibreScienceTool aims to provide free, open source software and open
                        hardware designs for scientific research and engineering. Too often,
                        researchers face barriers accessing expensive proprietary tools. I
                        believe science should be accessible to everyone.
                    </p>

                    <h2>What to Expect</h2>
                    <p>
                        On this site, you'll find:
                    </p>
                    <ul>
                        <li>Open source software tools for data analysis and visualization</li>
                        <li>Open hardware designs for scientific instruments</li>
                        <li>Tutorials and documentation</li>
                        <li>Blog posts about development and usage</li>
                    </ul>

                    <h2>Get Involved</h2>
                    <p>
                        All projects are released under permissive open source licenses.
                        Feel free to use them, modify them, and make them your own. If you
                        find them useful, consider spreading the word or supporting the
                        project through donations.
                    </p>

                    <h2>What's Next</h2>
                    <p>
                        In the coming weeks, I'll be releasing the first software project
                        and sharing detailed build guides for open hardware instruments.
                        Stay tuned!
                    </p>
                </div>

                <div style="margin-top: 3rem; padding-top: 2rem; border-top: 1px solid #e2e8f0;">
                    <a href="index.html" style="color: #2563eb; text-decoration: none; font-weight: 600;">
                        ← Back to all posts
                    </a>
                </div>
            </article>
        </div>
    </div>
</section>
```

## Adding Post to Index

After creating the full post, add it to `blog/index.html`:

```html
<div class="blog-list">
    <article class="blog-post">
        <h2><a href="welcome.html">Welcome to LibreScienceTool</a></h2>
        <div class="blog-date">January 10, 2026</div>
        <p class="blog-excerpt">
            I'm excited to launch LibreScienceTool, my contribution to the open science
            community. Learn about the mission, upcoming projects, and how you can use
            these tools in your own work.
        </p>
        <a href="welcome.html" class="read-more">Read more →</a>
    </article>

    <!-- Older posts below -->
</div>
```

## Content Guidelines

### Writing Style
- Write conversationally and personally (use "I" not "we")
- Keep paragraphs short (3-4 sentences)
- Use headings to break up content
- Include code examples when relevant

### Structure
1. **Introduction**: Hook the reader in the first paragraph
2. **Body**: Main content with clear headings
3. **Conclusion**: Summarize and call to action
4. **Navigation**: Link back to blog index

### Technical Posts
- Include code snippets with proper formatting
- Add screenshots or diagrams if helpful
- Provide working examples
- Link to related projects

### Tutorial Posts
- Number steps clearly
- Include prerequisites
- Show expected output
- Mention common pitfalls

## Formatting Tips

### Code Blocks
```html
<pre style="background: #f8fafc; padding: 1rem; border-radius: 0.5rem; overflow-x: auto;">
<code>
def hello_world():
    print("Hello, World!")
</code>
</pre>
```

### Images
```html
<img src="../images/screenshot.png"
     alt="Description"
     style="max-width: 100%; border-radius: 0.5rem; box-shadow: var(--shadow);">
```

### Callout Boxes
```html
<div style="background: #eff6ff; border-left: 4px solid #2563eb; padding: 1rem; margin: 1.5rem 0; border-radius: 0.5rem;">
    <strong>Note:</strong> Important information here.
</div>
```

### Lists
Use standard HTML lists - they're already styled:
```html
<ul>
    <li>First item</li>
    <li>Second item</li>
    <li>Third item</li>
</ul>
```

## Publishing Workflow

1. **Write locally**: Create your post file
2. **Preview**: Use `jekyll serve` or `start-preview-now.bat`
3. **Review**: Check formatting, links, and images
4. **Add to index**: Update `blog/index.html` with the post card
5. **Commit**:
   ```bash
   git add blog/
   git commit -m "Add blog post: [Post Title]"
   git push
   ```

## Best Practices

1. **Consistent naming**: Use lowercase with hyphens (e.g., `my-first-post.html`)
2. **SEO-friendly**: Include title and description in frontmatter
3. **Readable URLs**: Keep filenames short and descriptive
4. **Keep posts updated**: Add update notes if information changes
5. **Link internally**: Reference other posts and projects
6. **Mobile-friendly**: Preview on different screen sizes

## Quick Reference

### New Blog Post Checklist
- [ ] Create post file in `blog/`
- [ ] Add frontmatter (layout, title, description)
- [ ] Write content with proper headings
- [ ] Add back-to-blog link
- [ ] Create excerpt card in `blog/index.html`
- [ ] Preview locally
- [ ] Check all links work
- [ ] Commit and push

### File Locations
- Blog index: `blog/index.html`
- Individual posts: `blog/post-name.html`
- Images: `blog/images/` or `images/blog/`

## Need Help?

- Check the welcome post example above
- Look at existing posts for formatting ideas
- Keep it simple - you can always enhance later
- Preview before publishing
