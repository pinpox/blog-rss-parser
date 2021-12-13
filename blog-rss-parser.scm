(module blog-rss-parser ()
(import scheme)
(display "Hello CHICKEN!")

(import http-client (chicken io))
(import atom)
(import chicken.string)

; (display (with-input-from-request "http://wiki.call-cc.org/" #f read-string))

(define log-stdout (lambda (in) (display (read-string #f in))))

; (call-with-input-request "https://pablo.tools/atom.xml" #f log-stdout)

(define format-entry (lambda (entry) (entry-title entry)))


; (let ((a (list 1 2 3))
;       (b (list 4 5 6)))
;      (cons a b))

(define build-entry (lambda (entry) (let (
										  (link (link-uri (car (entry-links entry))))
										  (title (title-text (entry-title entry)))
										  )
									  (list
									  title
									  link
									  (entry-published entry)
									  (list-ref (string-split link "/") 3) ; cathegory
									  ))))



; (title link date category)

(display
  (map build-entry
	   (feed-entries (call-with-input-request "https://pablo.tools/atom.xml" #f read-atom-feed))))

(newline)
) ;; end module
