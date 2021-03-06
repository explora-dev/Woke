#ifndef MAINWINDOW_TEST_H
#define MAINWINDOW_TEST_H

#include <QObject>
#include <QTest>
#include <qdjango/db/QDjango.h>
#include <QDebug>

#include "../../src/controller/historycontroller.h"
#include "../../src/view/mainwindow.h"
#include "../controller/mockrequestscontroller.h"
#include "../testutils.h"
#include "../../src/controller/currentdatacontroller.h"

class MainWindow_Test : public MainWindow {
    Q_OBJECT

  protected:
    MockRequestsController *requestsController;
    HistoryController *historyController;

  private Q_SLOTS:
    void initTestCase();
    void test_sendRequest_valid();
    void test_sendRequest_gui();
    void test_responseReceived_gui();
    void test_recentRequestPressed_currentRequest();
    void test_saveCurrentRequestToProject();
    void compareRequests(Request &left, Request &right);
};

#endif // MAINWINDOW_TEST_H
