# arthurjuliani.com

The source for my personal website: publications, talks, projects, and links.
Built with [Jekyll](https://jekyllrb.com/) and deployed to GitHub Pages by
`.github/workflows/deploy.yml` on every push to `master`.

## Local development

```bash
bundle install
bundle exec jekyll serve --livereload
```

The site is then at <http://localhost:4000>.

## Where things live

| Path | Contents |
|---|---|
| `_pages/` | The pages themselves (about, publications, talks, projects, socials, groups) |
| `_bibliography/papers.bib` | Publications; `selected={true}` promotes an entry to the homepage |
| `_data/projects.yml` | Project cards on `/projects/` |
| `_data/groups.yml` | Reading groups on `/groups/` |
| `_plugins/external-posts.rb` | Pulls blog posts from my Medium RSS feed at build time |
| `_sass/` | Styles (`_creations.scss` holds the projects/talks/socials/groups pages) |

## Credit

Based on the [al-folio](https://github.com/alshedivat/al-folio) theme by Maruan
Al-Shedivat and contributors, MIT licensed — see `LICENSE`.
