# aliireza.github.io

Source for [aliireza.github.io](https://aliireza.github.io) — a single-page academic homepage
built with Jekyll and hosted on GitHub Pages.

## Where things live

| What | Where |
|---|---|
| All page content (bio, research, students, publications) | `_layouts/modern.html` |
| Site metadata, author links | `_config.yml` |
| Paper PDFs, CV, résumé | `files/` |
| Paper thumbnails (generated) | `images/papers/` |
| Favicons | `images/favicon/` |
| 404 page | `_pages/404.md` |

`_pages/about.md` only supplies the `/` permalink and redirects — its body is not rendered.
Edit `_layouts/modern.html` instead.

## Adding a publication

1. Drop the PDF in `files/` using the slug convention `<project>-<venue><yy>.pdf`
   (e.g. `packetmill-asplos21.pdf`).
2. Add that slug to the `SLUGS` list in `tools/make-thumbs.sh`.
3. Run `./tools/make-thumbs.sh` to render the thumbnail.
4. Add the entry to the publications list in `_layouts/modern.html`.

The thumbnail script renders page 1 of each PDF, cropped to the top of the page.

Requires `poppler` and `imagemagick`:

```bash
brew install poppler imagemagick
```

## Running locally

Jekyll 3.9 (pinned by GitHub Pages) is incompatible with Ruby 3.2+, which removed
`String#tainted?`. Use Ruby 3.1:

```bash
rbenv install 3.1.6
rbenv local 3.1.6
bundle install
bundle exec jekyll serve
```

Then open <http://localhost:4000>.

## Credits

Originally based on [AcademicPages](https://github.com/academicpages/academicpages.github.io),
forked from the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) Jekyll theme
(© 2016 Michael Rose, MIT License — see `LICENSE`).

The site was redesigned in August 2026 with the help of
[Claude](https://claude.ai): the legacy theme was replaced with a self-contained
single-page layout, and the remaining unused template files were removed.
