TEMPLATE = lib
CONFIG += qt plugin
QT += declarative

TARGET = qtmongodb

DESTDIR = lib
OBJECTS_DIR = tmp
MOC_DIR = tmp

HEADERS += \
    QtMongoPlugin.h \
    BSON.h \
    QMongoDriver.h \
    QMongoCursor.h \
    QMongoType.h

SOURCES += \
    QtMongoPlugin.cpp \
    BSON.cpp \
    QMongoDriver.cpp \
    QMongoCursor.cpp \
    QMongoType.cpp

OTHER_FILES += \
    demo.qml \
    qmldir \
    README \
    LICENSE \
    Button.qml \
    QtMongo/MongoDB.qml \
    QtMongo/MongoCollection.qml \
    QtMongo/MongoDB.js \
    QtMongo/MongoCollection.js \
    QtMongo/MongoQuery.qml \
    QtMongo/lib/json/json2.js \
    JsonEdit.qml \
    QtMongo/lib/mongodb/collection.js \
    QtMongo/lib/mongodb/db.js \
    QtMongo/lib/mongodb/query.js \
    QtMongo/lib/mongodb/README \
    QtMongo/MongoCode.js \
    QtMongo/lib/mongodb/utils.js \
    QtMongo/lib/mongodb/utils_patch.js \
    QtMongo/lib/mongodb/collection_patch.js \
    QtMongo/lib/mongodb/query_patch.js \
    QtMongo/lib/mongodb/db_patch.js \
    QtMongo/mongo.js \
    QtMongo/jstests.js \
    QtMongo/lib/jstests/find1.js \
    QtMongo/MongoDriverWrapper.js

LIBS += -lmongoclient \
    -lboost_thread-mt -lboost_filesystem -lboost_program_options

unix:!macx:!symbian: PRE_TARGETDEPS += /usr/lib/libmongoclient.a
