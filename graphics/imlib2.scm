;;;
;;; gauche_imlib2
;;;

(define-module graphics.imlib2
  (use srfi-1)
  (export-all))
  ;; (export image->gl image->gl-pixels image->gl-texture gl-pixels->image
  ;;         load-image save-image <im-image> 
  ;;         create-image image-width image-height image-has-alpha?
  ;;         ))
(select-module graphics.imlib2)

(define *data-gl-type-candidates* '(:texture :pixels))

(define (image->gl obj :key (alpha #f) (type :texture))
  (or (and-let* ((n (if alpha 4 3))
                 (type-v (list-index (cut equal? <> type) *data-gl-type-candidates*)))
        (%image->gl obj n type-v))
      (errorf "~a type is not found. :type argument must be :texture or :pixels" ~type)))

  
(define (image->gl-pixels obj :key (alpha #f))
  (%image->gl obj (if alpha 4 3) 1))

(define (image->gl-texture obj :key (alpha #f))
  (%image->gl obj (if alpha 4 3) 0))

;; Loads extension
(dynamic-load "gauche_imlib2")

;;
;; Put your Scheme definitions here
;;

;; Epilogue
(provide "graphics/imlib2")


