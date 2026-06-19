<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>ArnavCodes Sitemap</title>
        <style>
          body { font-family: Arial, sans-serif; background: #f5f7fb; color: #1c1f26; margin: 0; padding: 24px; }
          .container { max-width: 900px; margin: 0 auto; }
          h1 { margin-bottom: 0.25em; color: #0b3d91; }
          p { margin-top: 0; color: #4b5563; }
          table { width: 100%; border-collapse: collapse; margin-top: 18px; background: #ffffff; box-shadow: 0 2px 8px rgba(20, 30, 60, 0.08); }
          th, td { padding: 14px 16px; border-bottom: 1px solid #e5e7eb; text-align: left; }
          th { background: #eef2ff; color: #111827; font-weight: 700; }
          tr:hover { background: #f8fafc; }
          a { color: #1d4ed8; text-decoration: none; }
          a:hover { text-decoration: underline; }
          .note { color: #6b7280; font-size: 0.95rem; margin-top: 8px; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>ArnavCodes Sitemap</h1>
          <p class="note">This XML sitemap is styled for browser viewing and includes all current HTML pages.</p>
          <table>
            <thead>
              <tr>
                <th>URL</th>
                <th>Change Frequency</th>
                <th>Priority</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="urlset/url">
                <tr>
                  <td><a href="{loc}"><xsl:value-of select="loc"/></a></td>
                  <td><xsl:value-of select="changefreq"/></td>
                  <td><xsl:value-of select="priority"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
