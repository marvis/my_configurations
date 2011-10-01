echo "create lesson3.c ..."
if [ "1" ] ; then 
echo '//'
echo '// This code was created by Jeff Molofee '"'"'99'
echo '//'
echo '// If you'"'"'ve found this code useful, please let me know.'
echo '//'
echo '// Visit me at www.demonews.com/hosted/nehe'
echo '//'
echo '/**************************************************************/'
echo '// This code was ported to MacOS by Tony Parker.'
echo '//  I'"'"'d also appreciate it if you could drop me a line if you found'
echo '//  this code useful. '
echo '// '
echo '//  Tony Parker - asp@usc.edu'
echo '// '
echo '// Have a nice day.'
echo ''
echo '#include <stdio.h>			// Header File For Standard Input / Output'
echo '#include <stdarg.h>			// Header File For Variable Argument Routines'
echo '#include <string.h>			// Header File For String Management'
echo '#include <stdlib.h>'
echo '#include <GL/gl.h>				// Header File For The OpenGL32 Library'
echo '#include <GL/glu.h>			// Header File For The GLu32 Library'
echo '#include <GL/glut.h>			// Header File For The GLUT Library'
echo '#include <math.h>'
echo ''
echo '// Constants -----------------------------------------------------------------'
echo ''
echo '#define kWindowWidth	512'
echo '#define kWindowHeight	256'
echo ''
echo '// Function Prototypes -------------------------------------------------------'
echo ''
echo 'GLvoid InitGL(GLvoid);'
echo 'GLvoid DrawGLScene(GLvoid);'
echo 'GLvoid ReSizeGLScene(int Width, int Height);'
echo ''
echo '// Main ----------------------------------------------------------------------'
echo ''
echo 'int main(int argc, char** argv)'
echo '{'
echo '	'
echo '    glutInit(&argc, argv);'
echo '    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH);'
echo '    glutInitWindowSize(kWindowWidth, kWindowHeight); '
echo '    glutInitWindowPosition (100, 100);'
echo '    glutCreateWindow (argv[0]);'
echo '	'
echo '	InitGL();'
echo ' '
echo '    glutDisplayFunc(DrawGLScene); '
echo '    glutReshapeFunc(ReSizeGLScene);'
echo '    '
echo '    glutMainLoop();'
echo '    '
echo '    return 0;'
echo '}'
echo ''
echo '// InitGL -------------------------------------------------------------------'
echo ''
echo 'GLvoid InitGL(GLvoid)'
echo '{'
echo ''
echo '	glClearColor(0.0f, 0.0f, 0.0f, 0.0f);		// This Will Clear The Background Color To Black'
echo '	glClearDepth(1.0);							// Enables Clearing Of The Depth Buffer'
echo '	glDepthFunc(GL_LESS);						// The Type Of Depth Test To Do'
echo '	glEnable(GL_DEPTH | GL_DOUBLE | GLUT_RGB);	// Enables Depth Testing'
echo '	glShadeModel(GL_SMOOTH);					// Enables Smooth Color Shading'
echo ''
echo '	glMatrixMode(GL_PROJECTION);'
echo '	glLoadIdentity();							// Reset The Projection Matrix'
echo ''
echo '	gluPerspective(45.0f,(GLfloat)kWindowWidth/(GLfloat)kWindowHeight,0.1f,100.0f);	'
echo '												'
echo '												// Calculate The Aspect Ratio Of The Window'
echo ''
echo '	glMatrixMode(GL_MODELVIEW);'
echo ''
echo '}'
echo ''
echo '// DrawGLScene --------------------------------------------------------------'
echo ''
echo 'GLvoid DrawGLScene(GLvoid)'
echo '{    '
echo '	'
echo '	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);	// Clear The Screen And The Depth Buffer'
echo '	glLoadIdentity();									// Reset The View'
echo ''
echo '	glTranslatef(-1.5f,0.0f,-6.0f);				// Move Into The Screen And Left'
echo '	glBegin(GL_POLYGON);						// Start Drawing A Polygon'
echo '		glColor3f(1.0f,0.0f,0.0f);				// Set Top Point Of Polygon To Red'
echo '		glVertex3f( 0.0f, 1.0f, 0.0f);			// First Point Of The Polygon (Triangle)'
echo '		glColor3f(0.0f,1.0f,0.0f);				// Set Left Point Of Polygon To Green'
echo '		glVertex3f(-1.0f,-1.0f, 0.0f);			// Second Point Of The Polygon'
echo '		glColor3f(0.0f,0.0f,1.0f);				// Set Right Point Of Polygon To Blue'
echo '		glVertex3f( 1.0f,-1.0f, 0.0f);			// Third Point Of The Polygon'
echo '	glEnd();'
echo '	'
echo '	glLoadIdentity();'
echo '	'
echo '	glTranslatef(1.5f,0.0f,-6.0f);				// Move Right 1.5 Units'
echo '	glColor3f(0.5f,0.5f,1.0f);					// Set The Color To A Nice Blue Shade'
echo '	glBegin(GL_QUADS);							// Start Drawing A Quad'
echo '		glVertex3f(-1.0f, 1.0f, 0.0f);			// Top Left Of The Quad'
echo '		glVertex3f( 1.0f, 1.0f, 0.0f);			// Top Right Of The Quad'
echo '		glVertex3f( 1.0f,-1.0f, 0.0f);			// Bottom Right Of The Quad'
echo '		glVertex3f(-1.0f,-1.0f, 0.0f);			// Bottom Left Of The Quad'
echo '	glEnd();							'
echo '	'
echo '    glutSwapBuffers();'
echo ''
echo '}'
echo ''
echo '// ReSizeGLScene ------------------------------------------------------------'
echo ''
echo 'GLvoid ReSizeGLScene(int Width, int Height)'
echo '{'
echo '    glViewport (0, 0, (GLsizei) Width, (GLsizei) Height);'
echo '    glMatrixMode(GL_PROJECTION);'
echo '    glLoadIdentity();'
echo ''
echo '    gluPerspective(45.0, (GLfloat) Width / (GLfloat) Height, 0.1, 100.0);'
echo '   '
echo '    glMatrixMode(GL_MODELVIEW);'
echo '    glLoadIdentity();'
echo '}'
fi > lesson3.c

echo "create makefile ..."
if [ "1" ] ; then 
echo 'INCLUDE = -I/usr/X11R6/include'
echo 'LIBDIR  = -L/usr/X11R6/lib'
echo ''
echo 'COMPILERFLAGS = -Wall'
echo 'CC = gcc'
echo 'CFLAGS = $(COMPILERFLAGS) $(INCLUDE)'
echo 'LIBRARIES =  -lglut -lGL -lGLU -lX11 -lm -L/usr/X11R6/lib'
echo ''
echo '# for all, set the targets to be every lesson1.c-lesson13.c '
echo '# file, removing the .c extension.  That is, at this point,'
echo '# it would produce lesson1, lesson2, lesson3,...,lesson13 targets.'
echo '#'
echo 'all: $(basename $(wildcard lesson[1-9].c lesson1[0-3].c lesson[1-9].cpp lesson1[0-3].cpp))'
echo ''
echo '# same as for all, except set the targets to be '
echo '# lessonX.tar.gz from lessonX.c.  This is really'
echo '# only used to build smaller tutorial .tar.gz files'
echo '# to send to nehe.'
echo '#'
echo 'dist: $(foreach file,$(basename $(wildcard lesson[1-9].c lesson1[0-3].c)),$(file).tar.gz)'
echo ''
echo '# to produce, say, lesson1.tar.gz:'
echo '#'
echo '# 1. remove lesson1.tar.gz'
echo '# 2. build lesson1.tar containing README, makefile, lesson1.c, Data/lesson1/*.'
echo '# 3. gzip lesson1.tar.'
echo '#'
echo 'lesson%.tar.gz : '
echo '	tar cvf $(subst .tar.gz,.tar,$@) README makefile $(subst .tar.gz,.c,$@) $(wildcard Data/$(subst .tar.gz,,$@)/*); \'
echo '	gzip $(subst .tar.gz,.tar,$@);'
echo ''
echo '# to produce, say, lesson1:'
echo '#'
echo '# 1. compile the thing.  uses the variables defined above.'
echo '# '
echo 'lesson% : lesson%.o'
echo '	$(CC) $(CFLAGS) -o $@ $(LIBDIR) $< $(LIBRARIES)  '
echo ''
echo '# to clean up:'
echo '# delete all of the lessonX files.'
echo 'clean:'
echo '	rm $(wildcard lesson[1-9] lesson1[0-3])'
echo ''
echo '# to clean up the distributions:'
echo '# delete all of the lessonX.tar.gz files.'
echo 'distclean:'
echo '	rm $(wildcard lesson[1-9].tar.gz lesson1[0-3].tar.gz)'
echo ''
fi > makefile

