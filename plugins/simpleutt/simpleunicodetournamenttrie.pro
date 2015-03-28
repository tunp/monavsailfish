#-------------------------------------------------
#
# Project created by QtCreator 2010-06-22T13:51:45
#
#-------------------------------------------------

TARGET = simpleutt
DESTDIR = ../../bin/plugins_preprocessor

INCLUDEPATH += ../..

TEMPLATE = lib
CONFIG += plugin static
QT += widgets

SOURCES += simpleunicodetournamenttrie.cpp

HEADERS += simpleunicodetournamenttrie.h \
	 ../../utils/coordinates.h \
	 ../../utils/config.h \
	 ../../interfaces/iimporter.h \
	 ../../interfaces/ipreprocessor.h \
	 strie.h \
	 ../../utils/bithelpers.h \
	 ../../utils/qthelpers.h \
	 ../../utils/edgeconnector.h

unix {
	QMAKE_CXXFLAGS_RELEASE -= -O2
	QMAKE_CXXFLAGS_RELEASE += -O3 -Wno-unused-function
	QMAKE_CXXFLAGS_DEBUG += -Wno-unused-function
}

!nogui {
	SOURCES += uttsettingsdialog.cpp
	HEADERS += uttsettingsdialog.h
	FORMS += uttsettingsdialog.ui
}
nogui {
	DEFINES += NOGUI
	QT -= gui
}
