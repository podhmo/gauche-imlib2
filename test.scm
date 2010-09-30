;;;
;;; Test graphics.imlib2
;;;

(use gauche.test)

(test-start "graphics.imlib2")
(use graphics.imlib2)
(test-module 'graphics.imlib2)

;; The following is a dummy test code.
;; Replace it for your tests.
(test* "test-gauche_imlib2" "gauche_imlib2 is working"
       (test-gauche_imlib2))

(test-section "load-image")
(test* "create image" <im-image> (class-of (create-image 300 300)))
(test* "save-image" (undefined) (save-image (create-image 100 100) "foo.jpg"))
(test* "iamge file not found"  #f (load-image "images/bbbb.jpg"))

(define img (load-image "images/a.jpg"))
(print img)
(test* "image-width" 30 (image-width img))
(test* "image-height" 23 (image-height img))
(test* "has-alpha?" #f (image-has-alpha? (load-image "images/a.jpg")))
(print (load-image "images/a.jpg"))
;; epilogue
(test-end)





