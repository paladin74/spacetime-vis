 (setq org-publish-project-alist
           '(("orgfiles"
               :base-directory "./"
               :base-extension "org"
               :publishing-directory "./"
               :publishing-function org-publish-org-to-html
               :headline-levels 3
               :section-numbers nil
               :table-of-contents nil
	       :org-export-html-style-include-default nil
	       :html-preamble nil
	       :html-postamble nil)
     
              ("images"
               :base-directory "images/"
               :base-extension "jpg\\|gif\\|png"
               :publishing-directory "image/"
               :publishing-function org-publish-attachment)
     
              ("other"
               :base-directory "code/"
               :base-extension "R"
               :publishing-directory "code/"
               :publishing-function org-publish-attachment)
              ("website" :components ("orgfiles" "images" "other"))))
