######################################################################
# Automatically generated by qmake (2.01a) mi� 7. feb 13:18:07 2007
######################################################################

TEMPLATE      = lib
CONFIG       += plugin debug_and_release

win32{
	DEFINES+= COIN_DLL SOQT_DLL
	INCLUDEPATH += . \
					src \
					../Tonatiuh/src \ 
					c:/msys/usr/local/include 
				
	LIBS += -L"c:\msys\usr\local\lib" -lmingw32 -lqtmain  -lSoQt -lCoin -lopengl32
}
unix{
	INCLUDEPATH += 	. \
					src \
					../Tonatiuh/src

	LIBS +=-L/usr/local/lib -lCoin -lSoQt
}


# Input
HEADERS = *.h \
			../Tonatiuh/src/BBox.h \
           	../Tonatiuh/src/DifferentialGeometry.h \
           	../Tonatiuh/src/InstanceNode.h \
           	../Tonatiuh/src/Matrix4x4.h \
       		../Tonatiuh/src/NormalVector.h \
           	../Tonatiuh/src/Photon.h \
           	../Tonatiuh/src/PhotonMap.h \
       		../Tonatiuh/src/Point3D.h \
          	../Tonatiuh/src/RandomDeviate.h \
          	../Tonatiuh/src/Ray.h \
           	../Tonatiuh/src/RefCount.h \
           	../Tonatiuh/src/tgf.h \
           	../Tonatiuh/src/TMaterial.h \
           	../Tonatiuh/src/Trace.h \
           	../Tonatiuh/src/Transform.h \
           	../Tonatiuh/src/TSeparatorKit.h \
           	../Tonatiuh/src/TShape.h \
           	../Tonatiuh/src/TShapeKit.h \
           	../Tonatiuh/src/Vector3D.h 


SOURCES = *.cpp \
			../Tonatiuh/src/BBox.cpp \
 		   	../Tonatiuh/src/InstanceNode.cpp \
           	../Tonatiuh/src/DifferentialGeometry.cpp \
           	../Tonatiuh/src/Matrix4x4.cpp \
           	../Tonatiuh/src/NormalVector.cpp \
           	../Tonatiuh/src/Photon.cpp \
           	../Tonatiuh/src/PhotonMap.cpp \
           	../Tonatiuh/src/Point3D.cpp \
           	../Tonatiuh/src/Ray.cpp \
           	../Tonatiuh/src/RefCount.cpp \
           	../Tonatiuh/src/tgf.cpp \
           	../Tonatiuh/src/TMaterial.cpp \
           	../Tonatiuh/src/Transform.cpp \
           	../Tonatiuh/src/TShape.cpp \
           	../Tonatiuh/src/Trace.cpp \
           	../Tonatiuh/src/TSeparatorKit.cpp \
           	../Tonatiuh/src/TShapeKit.cpp \
           	../Tonatiuh/src/Vector3D.cpp

RESOURCES += ShapeSphericalPolygon.qrc

DESTDIR = ../Tonatiuh/plugins/ShapeSphericalPolygon	
TARGET        = ShapeSphericalPolygon
    contains(TEMPLATE,lib) {
    
       CONFIG(debug, debug|release) {
       
          unix	{
          
          	DESTDIR       = ../Tonatiuh/debug/plugins/ShapeSphericalPolygon
          	TARGET = $$member(TARGET, 0)_debug
          	
          }
          
          else:TARGET = $$member(TARGET, 0)d
       }
       
    }