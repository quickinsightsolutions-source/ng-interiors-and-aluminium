NG Aluminium Interiors - Website Package
---------------------------------------

Files included:
- index.html, services.html, portfolio.html, gallery.html, about.html, contact.html, 404.html
- assets/ : style.css, glightbox.min.css, glightbox.min.js, favicon.png, favicon.ico
- images/ : wardrobes/, kitchens/, partitions/, doors/
- deploy.sh : sample Google Cloud deploy script
- sitemap.xml, robots.txt

How to replace images:
- Replace images in images/<category>/ keeping the filename.
- For OG/Twitter meta update the image path in <meta property="og:image"> in index.html.

How to edit captions:
- Lightbox captions are the 'data-title' attribute on <a class="glightbox"> elements in portfolio/gallery HTML files.

Deployment:
- For Google Cloud, edit deploy.sh with your PROJECT_ID and BUCKET_NAME and run it.
- For cPanel, upload contents to public_html/