(setq org-publish-project-alist
      '(

  ("org-n4t"
          ;; Path to your org files.
          :base-directory "~/n4t-dog.github.io/org/_posts"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/n4t-dog.github.io/site/_posts"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )


    ("org-static-n4t"
          :base-directory "~/n4t-dog.github.io/org/_posts"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/n4t-dog.github.io/site"
          :recursive t
          :publishing-function org-publish-attachment)

    ("n4t" :components ("org-n4t" "org-static-n4t"))

))
