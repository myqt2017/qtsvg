HEADERS       = mainwindow.h \
                svgview.h
RESOURCES     = svgviewer.qrc
SOURCES       = main.cpp \
                mainwindow.cpp \
                svgview.cpp
QT           += svg xml

contains(QT_CONFIG, opengl): QT += opengl

CONFIG += console

# install
target.path = $$[QT_INSTALL_EXAMPLES]/qtsvg/painting/svgviewer
sources.files = $$SOURCES $$HEADERS $$RESOURCES svgviewer.pro files
sources.path = $$[QT_INSTALL_EXAMPLES]/qtsvg/painting/svgviewer
INSTALLS += target sources

wince*: {
     addFiles.files = files\\*.svg
     addFiles.path = "\\My Documents"
     DEPLOYMENT += addFiles
}

symbian: {
     TARGET.UID3 = 0xA000A64E
     CONFIG += qt_example
     addFiles.files = files\\*.svg
     addFiles.path = .
     DEPLOYMENT += addFiles
}
maemo5: CONFIG += qt_example

