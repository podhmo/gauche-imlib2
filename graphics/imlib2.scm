;;;
;;; gauche_imlib2
;;;

(define-module graphics.imlib2
  (export-all ;;slack-off
          )
  )
(select-module graphics.imlib2)

(define (image-data-gl-pixels obj :key (alpha #f))
  (print "this is scheme world")
  (%image-data-gl-pixels obj (if alpha 1 0)))

;; Loads extension
(dynamic-load "gauche_imlib2")

;;
;; Put your Scheme definitions here
;;

;; Epilogue
(provide "graphics/imlib2")


