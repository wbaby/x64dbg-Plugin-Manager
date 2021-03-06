QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = x64plgmnr
TEMPLATE = app

include(../build.pri)

SOURCES += \
    ../getfilefromserverprocess.cpp \
    ../installmoduleprocess.cpp \
    ../removemoduleprocess.cpp \
    ../utils.cpp \
    ../createmoduleprocess.cpp \
    dialogabout.cpp \
    dialogcreatemodule.cpp \
    dialogcreatemoduleprocess.cpp \
    dialoggetfilefromserverprocess.cpp \
    dialoginfomodule.cpp \
    dialoginstallmodule.cpp \
    dialoginstallmoduleprocess.cpp \
    dialogoptions.cpp \
    dialogremovemodule.cpp \
    dialogremovemoduleprocess.cpp \
    guimainwindow.cpp \
    main_gui.cpp \
    plugininfowidget.cpp

HEADERS += \
    ../getfilefromserverprocess.h \
    ../global.h \
    ../installmoduleprocess.h \
    ../removemoduleprocess.h \
    ../utils.h \
    ../createmoduleprocess.h \
    dialogabout.h \
    dialogcreatemodule.h \
    dialogcreatemoduleprocess.h \
    dialoggetfilefromserverprocess.h \
    dialoginfomodule.h \
    dialoginstallmodule.h \
    dialoginstallmoduleprocess.h \
    dialogoptions.h \
    dialogremovemodule.h \
    dialogremovemoduleprocess.h \
    guimainwindow.h \
    plugininfowidget.h

FORMS += \
    dialogabout.ui \
    dialogcreatemodule.ui \
    dialogcreatemoduleprocess.ui \
    dialoggetfilefromserverprocess.ui \
    dialoginfomodule.ui \
    dialoginstallmodule.ui \
    dialoginstallmoduleprocess.ui \
    dialogoptions.ui \
    dialogremovemodule.ui \
    dialogremovemoduleprocess.ui \
    guimainwindow.ui \
    plugininfowidget.ui

!contains(XCONFIG, xarchive) {
    XCONFIG += xarchive
    include(../XArchive/xarchive.pri)
}

win32 {
    RC_ICONS = ../icons/main.ico
}

RESOURCES += \
    resources.qrc
