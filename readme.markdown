gauche-imlib2
============

install
-------
    git clone git@github.com:podhmo/gauche-imlib2.git
    cd gauche-imlib2
    sudo make install

how to use
---------
    (use graphics.imlib2)
    
    (define img (load-image "a.jpg"))
    (print img (image-width img) (image-height img))
    