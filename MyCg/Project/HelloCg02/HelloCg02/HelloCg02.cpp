#include <gl/glut.h>
#include <cg/cg.h>
#include <Cg/cgGL.h>
#include <stdio.h>

int ww = 640, hh = 480;

void render();
void reshape(int w, int h);

static CGcontext   myCgContext;
static CGprofile   myCgVertexProfile;
static CGprogram   myCgVertexProgram;
static const char *myProgramName = "Hello CG 02";
static const char *myVertexProgramFileName = "02vs.cg";
static const char *myVertexProgramName = "vs_main";

int main(int argc, char** argv) {
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);
	glutInitWindowSize(ww, hh);
	glutCreateWindow(myProgramName);
	glutDisplayFunc(render);
	glutReshapeFunc(reshape);
	glEnable(GL_DEPTH_TEST);
	myCgContext = cgCreateContext();
	cgGLSetDebugMode(CG_FALSE);
	cgSetParameterSettingMode(myCgContext, CG_DEFERRED_PARAMETER_SETTING);
	myCgVertexProfile = cgGLGetLatestProfile(CG_GL_VERTEX);
	cgGLSetOptimalOptions(myCgVertexProfile);
	myCgVertexProgram =
		cgCreateProgramFromFile(
			myCgContext,
			/* Cg runtime context */
			CG_SOURCE,
			/* Program in human-readable form */
			myVertexProgramFileName,
			/* Name of file containing program */
			myCgVertexProfile,
			/* Profile: OpenGL ARB vertex program */
			myVertexProgramName,
			/* Entry function name */
			NULL);
	/* No extra compiler options */
	cgGLLoadProgram(myCgVertexProgram);
	glutMainLoop();
	return 0;
}
void reshape(int w, int h) {
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45, (float)w / (float)h, 0.1, 100);
	glViewport(0, 0, w, h);
	ww = w;
	hh = h;
}
void render() {
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glClearColor(.0f, .0f, .2f, 1.0f);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	gluLookAt(.0, .0, 5.0, .0, .0, .0, .0, 1.0, .0);
	static float angle;
	glRotatef(angle, 0.0, 1.0, 0.0);
	cgGLBindProgram(myCgVertexProgram);
	cgGLEnableProfile(myCgVertexProfile);
	//将ModelViewProjection矩阵传入shader
	CGparameter mvp = cgGetNamedParameter(myCgVertexProgram, "MVP");
	cgGLSetStateMatrixParameter(mvp, CG_GL_MODELVIEW_PROJECTION_MATRIX, CG_GL_MATRIX_IDENTITY);
	glutSolidTorus(0.3, 1.0, 30, 30);
	cgGLDisableProfile(myCgVertexProfile);
	angle += 0.5;
	if (angle >= 360) angle = 0.0f;
	glutSwapBuffers();
	glutPostRedisplay();
}