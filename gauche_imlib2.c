/*
 * gauche_imlib2.c
 */

#include "gauche_imlib2.h"

/*
 * The following function is a dummy one; replace it for
 * your C function definitions.
 */

ScmObj test_gauche_imlib2(void)
{
    return SCM_MAKE_STR("gauche_imlib2 is working");
}

/*
 * Module initialization function.
 */
extern void Scm_Init_gauche_imlib2lib(ScmModule*);

void Scm_Init_gauche_imlib2(void)
{
    ScmModule *mod;

    /* Register this DSO to Gauche */
    SCM_INIT_EXTENSION(gauche_imlib2);

    /* Create the module if it doesn't exist yet. */
    mod = SCM_MODULE(SCM_FIND_MODULE("graphics.imlib2", TRUE));

    /* Register stub-generated procedures */
    Scm_Init_gauche_imlib2lib(mod);
}
