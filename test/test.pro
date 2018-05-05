######################################################################
# Automatically generated by qmake (2.01a) Sun Feb 9 19:16:01 2014
######################################################################

# enable C++11 support
greaterThan(QT_MAJOR_VERSION, 4){
  CONFIG += c++11
} else {
  QMAKE_CXXFLAGS += -std=c++0x
}

TEMPLATE = app
TARGET = unittests
DEPENDPATH += .
INCLUDEPATH += . ../libscidavis ../libscidavis/src ../tmp/scidavis ../scidavis
LIBS += -L ../libscidavis -lscidavis

POST_TARGETDEPS=../libscidavis/libscidavis.a

CONFIG        += qt warn_on exceptions opengl thread zlib
QT            += opengl qt3support network svg xml
MOC_DIR        = ../tmp/scidavis
OBJECTS_DIR    = ../tmp/test

include(../config.pri)
python {
  PYTHONBIN = $$(PYTHON)
  isEmpty( PYTHONBIN ) {
    PYTHONBIN = python
  }

  unix {
        macx {
        LIBS += -framework Python
      } else {
        LIBS += $$system($$PYTHONBIN -c "\"from distutils import sysconfig;import sys; sys.stdout.write('-lpython'+sysconfig.get_config_var('VERSION')+(sysconfig.get_config_var('ABIFLAGS') or ''))\"")
      }
  }
}

liborigin {
  LIBS += ../3rdparty/liborigin/liborigin.a
  POST_TARGETDEPS += ../3rdparty/liborigin/liborigin.a
}

QT+=testlib

# Input
HEADERS += unittests.h
SOURCES += unittests.cpp applicationWindow.cpp readWriteProject.cpp fft.cpp testPaintDevice.cpp 3dplot.cpp menus.cpp

########### Future code backported from the aspect framework ##################
DEFINES += LEGACY_CODE_0_2_x
INCLUDEPATH += ../libscidavis/src/future
