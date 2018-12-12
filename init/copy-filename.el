(defun copy-fullpath-buffer-file-name-to-clipboard ()
  "Copy the current buffer full path file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))

(defun copy-buffer-file-name-to-clipboard ()
  "Copy the current buffer project file name to the clipboard."
  (interactive)
  (let ((filename (if (featurep 'projectile)
                      (replace-regexp-in-string (projectile-project-root) "" buffer-file-name)
                    (message "copy-buffer-file-name-to-clipboard need projectile installed")))
        )
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename)
      )
    ))
