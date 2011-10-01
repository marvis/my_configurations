/********************************************************************************
** Form generated from reading UI file 'NaMainWindow.ui'
**
** Created: Wed May 25 16:12:27 2011
**      by: Qt User Interface Compiler version 4.7.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAMAINWINDOW_H
#define UI_NAMAINWINDOW_H

#include <../neuron_annotator/Na3DWidget.h>
#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QComboBox>
#include <QtGui/QDial>
#include <QtGui/QFrame>
#include <QtGui/QGridLayout>
#include <QtGui/QGroupBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QMainWindow>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QScrollArea>
#include <QtGui/QScrollBar>
#include <QtGui/QSpacerItem>
#include <QtGui/QSpinBox>
#include <QtGui/QStackedWidget>
#include <QtGui/QStatusBar>
#include <QtGui/QTabWidget>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include "../neuron_annotator/GammaWidget.h"
#include "../neuron_annotator/NaLargeMIPWidget.h"
#include "../neuron_annotator/NaZStackWidget.h"

QT_BEGIN_NAMESPACE

class Ui_NaMainWindow
{
public:
    QAction *actionOpen;
    QAction *actionLog_off;
    QAction *actionAbout_NeuronAnnotator;
    QAction *actionQuit;
    QAction *actionV3DDefault_2;
    QAction *actionNeuronAnnotator_2;
    QAction *actionLoad_Tiff;
    QAction *actionLoad_2D_MIP_image;
    QAction *actionCell_Counter_3D_2ch_lsm;
    QAction *actionPreferences;
    QAction *actionV3D_default;
    QAction *actionNeuron_annotator;
    QAction *actionV3DDefault;
    QAction *actionNeuronAnnotator;
    QAction *actionLink_viewers;
    QAction *actionShow_Crosshair;
    QWidget *centralwidget;
    QHBoxLayout *horizontalLayout;
    QFrame *viewerAndMIPsFrame;
    QVBoxLayout *verticalLayout;
    QFrame *viewerAndControlsFrame;
    QHBoxLayout *horizontalLayout_2;
    QStackedWidget *viewerStackedWidget;
    QWidget *viewerMIP_Page;
    QHBoxLayout *horizontalLayout_11;
    NaLargeMIPWidget *naLargeMIPWidget;
    QWidget *viewerZ_Page;
    QHBoxLayout *horizontalLayout_10;
    QFrame *frame_5;
    QVBoxLayout *verticalLayout_12;
    NaZStackWidget *naZStackWidget;
    QScrollBar *ZSlice_horizontalScrollBar;
    QWidget *viewer3D_Page;
    QHBoxLayout *horizontalLayout_3;
    Na3DWidget *v3dr_glwidget;
    QFrame *viewerSelectorAndControlFrame;
    QVBoxLayout *verticalLayout_7;
    QTabWidget *viewerControlTabWidget;
    QWidget *largeMipViewerControlPage;
    QVBoxLayout *verticalLayout_10;
    GammaWidget *gammaWidget_MIP;
    QSpacerItem *verticalSpacer_4;
    QWidget *zSliceViewerControlPage;
    QHBoxLayout *horizontalLayout_12;
    QFrame *frame;
    QVBoxLayout *verticalLayout_9;
    QSpacerItem *verticalSpacer_3;
    QGroupBox *ZSlice_groupBox;
    QVBoxLayout *verticalLayout_11;
    QFrame *frame_3;
    QHBoxLayout *horizontalLayout_13;
    QPushButton *HDRRed_pushButton;
    QPushButton *HDRGreen_pushButton;
    QPushButton *HDRBlue_pushButton;
    QFrame *frame_4;
    QHBoxLayout *horizontalLayout_14;
    QLabel *BoxSize_label;
    QSpinBox *BoxSize_spinBox;
    QSpacerItem *horizontalSpacer_2;
    QSpacerItem *verticalSpacer_2;
    QGroupBox *HDR_groupBox;
    QHBoxLayout *horizontalLayout_15;
    QSpinBox *ZSlice_spinBox;
    QLabel *ZSliceTotal_label;
    QSpacerItem *horizontalSpacer;
    QWidget *viewer3DControlPage;
    QVBoxLayout *verticalLayout_3;
    QFrame *viewerControl3DFrame;
    QVBoxLayout *verticalLayout_8;
    QGroupBox *color3DControlGroupBox;
    QVBoxLayout *verticalLayout_4;
    QFrame *frame_13;
    QHBoxLayout *horizontalLayout_6;
    QPushButton *pushButton_3;
    QPushButton *pushButton_2;
    QPushButton *pushButton_4;
    QPushButton *pushButton_5;
    GammaWidget *gammaWidget_3D;
    QFrame *frame_12;
    QHBoxLayout *horizontalLayout_8;
    QComboBox *comboBox;
    QPushButton *colorResetButton;
    QGroupBox *rotation3DControlGroupBox;
    QVBoxLayout *verticalLayout_5;
    QFrame *frame_16;
    QHBoxLayout *horizontalLayout_9;
    QFrame *frame_18;
    QGridLayout *gridLayout_2;
    QDial *rotXDial;
    QLineEdit *lineEdit_4;
    QDial *rotYDial;
    QLineEdit *lineEdit_5;
    QDial *rotZDial;
    QLineEdit *lineEdit_6;
    QFrame *frame_17;
    QVBoxLayout *verticalLayout_6;
    QPushButton *rotationResetButton;
    QPushButton *pushButton_10;
    QFrame *frame_15;
    QGridLayout *gridLayout_3;
    QWidget *custom3DWidget;
    QCheckBox *nutateButton;
    QSpacerItem *verticalSpacer;
    QFrame *mipsFrame;
    QHBoxLayout *horizontalLayout_4;
    QFrame *maskFrame;
    QFrame *galleryFrame;
    QVBoxLayout *verticalLayout_2;
    QScrollArea *scrollArea;
    QWidget *scrollAreaWidgetContents;
    QHBoxLayout *horizontalLayout_5;
    QFrame *maskGallery;
    QFrame *annotationFrame;
    QMenuBar *menubar;
    QMenu *menuFile;
    QMenu *menuHelp;
    QMenu *menuEdit;
    QMenu *menuView;
    QMenu *menuMode;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *NaMainWindow)
    {
        if (NaMainWindow->objectName().isEmpty())
            NaMainWindow->setObjectName(QString::fromUtf8("NaMainWindow"));
        NaMainWindow->resize(1042, 819);
        actionOpen = new QAction(NaMainWindow);
        actionOpen->setObjectName(QString::fromUtf8("actionOpen"));
        actionOpen->setAutoRepeat(false);
        actionLog_off = new QAction(NaMainWindow);
        actionLog_off->setObjectName(QString::fromUtf8("actionLog_off"));
        actionAbout_NeuronAnnotator = new QAction(NaMainWindow);
        actionAbout_NeuronAnnotator->setObjectName(QString::fromUtf8("actionAbout_NeuronAnnotator"));
        actionAbout_NeuronAnnotator->setMenuRole(QAction::AboutRole);
        actionQuit = new QAction(NaMainWindow);
        actionQuit->setObjectName(QString::fromUtf8("actionQuit"));
        actionQuit->setMenuRole(QAction::QuitRole);
        actionV3DDefault_2 = new QAction(NaMainWindow);
        actionV3DDefault_2->setObjectName(QString::fromUtf8("actionV3DDefault_2"));
        actionV3DDefault_2->setCheckable(true);
        actionNeuronAnnotator_2 = new QAction(NaMainWindow);
        actionNeuronAnnotator_2->setObjectName(QString::fromUtf8("actionNeuronAnnotator_2"));
        actionNeuronAnnotator_2->setCheckable(true);
        actionLoad_Tiff = new QAction(NaMainWindow);
        actionLoad_Tiff->setObjectName(QString::fromUtf8("actionLoad_Tiff"));
        actionLoad_2D_MIP_image = new QAction(NaMainWindow);
        actionLoad_2D_MIP_image->setObjectName(QString::fromUtf8("actionLoad_2D_MIP_image"));
        actionCell_Counter_3D_2ch_lsm = new QAction(NaMainWindow);
        actionCell_Counter_3D_2ch_lsm->setObjectName(QString::fromUtf8("actionCell_Counter_3D_2ch_lsm"));
        actionPreferences = new QAction(NaMainWindow);
        actionPreferences->setObjectName(QString::fromUtf8("actionPreferences"));
        actionPreferences->setMenuRole(QAction::PreferencesRole);
        actionV3D_default = new QAction(NaMainWindow);
        actionV3D_default->setObjectName(QString::fromUtf8("actionV3D_default"));
        actionNeuron_annotator = new QAction(NaMainWindow);
        actionNeuron_annotator->setObjectName(QString::fromUtf8("actionNeuron_annotator"));
        actionV3DDefault = new QAction(NaMainWindow);
        actionV3DDefault->setObjectName(QString::fromUtf8("actionV3DDefault"));
        actionV3DDefault->setCheckable(true);
        actionNeuronAnnotator = new QAction(NaMainWindow);
        actionNeuronAnnotator->setObjectName(QString::fromUtf8("actionNeuronAnnotator"));
        actionNeuronAnnotator->setCheckable(true);
        actionLink_viewers = new QAction(NaMainWindow);
        actionLink_viewers->setObjectName(QString::fromUtf8("actionLink_viewers"));
        actionLink_viewers->setCheckable(true);
        actionLink_viewers->setChecked(true);
        actionShow_Crosshair = new QAction(NaMainWindow);
        actionShow_Crosshair->setObjectName(QString::fromUtf8("actionShow_Crosshair"));
        actionShow_Crosshair->setCheckable(true);
        actionShow_Crosshair->setChecked(true);
        centralwidget = new QWidget(NaMainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        horizontalLayout = new QHBoxLayout(centralwidget);
        horizontalLayout->setSpacing(0);
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        viewerAndMIPsFrame = new QFrame(centralwidget);
        viewerAndMIPsFrame->setObjectName(QString::fromUtf8("viewerAndMIPsFrame"));
        viewerAndMIPsFrame->setFrameShape(QFrame::NoFrame);
        viewerAndMIPsFrame->setFrameShadow(QFrame::Plain);
        viewerAndMIPsFrame->setLineWidth(0);
        verticalLayout = new QVBoxLayout(viewerAndMIPsFrame);
        verticalLayout->setSpacing(0);
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        viewerAndControlsFrame = new QFrame(viewerAndMIPsFrame);
        viewerAndControlsFrame->setObjectName(QString::fromUtf8("viewerAndControlsFrame"));
        viewerAndControlsFrame->setFrameShape(QFrame::StyledPanel);
        viewerAndControlsFrame->setFrameShadow(QFrame::Raised);
        viewerAndControlsFrame->setLineWidth(1);
        horizontalLayout_2 = new QHBoxLayout(viewerAndControlsFrame);
        horizontalLayout_2->setSpacing(0);
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        viewerStackedWidget = new QStackedWidget(viewerAndControlsFrame);
        viewerStackedWidget->setObjectName(QString::fromUtf8("viewerStackedWidget"));
        QPalette palette;
        QBrush brush(QColor(255, 255, 255, 255));
        brush.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Base, brush);
        QBrush brush1(QColor(0, 0, 0, 255));
        brush1.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Window, brush1);
        palette.setBrush(QPalette::Inactive, QPalette::Base, brush);
        palette.setBrush(QPalette::Inactive, QPalette::Window, brush1);
        palette.setBrush(QPalette::Disabled, QPalette::Base, brush1);
        palette.setBrush(QPalette::Disabled, QPalette::Window, brush1);
        viewerStackedWidget->setPalette(palette);
        viewerStackedWidget->setFrameShape(QFrame::NoFrame);
        viewerStackedWidget->setFrameShadow(QFrame::Plain);
        viewerStackedWidget->setLineWidth(0);
        viewerMIP_Page = new QWidget();
        viewerMIP_Page->setObjectName(QString::fromUtf8("viewerMIP_Page"));
        horizontalLayout_11 = new QHBoxLayout(viewerMIP_Page);
        horizontalLayout_11->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_11->setObjectName(QString::fromUtf8("horizontalLayout_11"));
        naLargeMIPWidget = new NaLargeMIPWidget(viewerMIP_Page);
        naLargeMIPWidget->setObjectName(QString::fromUtf8("naLargeMIPWidget"));
        naLargeMIPWidget->setAutoFillBackground(true);

        horizontalLayout_11->addWidget(naLargeMIPWidget);

        viewerStackedWidget->addWidget(viewerMIP_Page);
        viewerZ_Page = new QWidget();
        viewerZ_Page->setObjectName(QString::fromUtf8("viewerZ_Page"));
        horizontalLayout_10 = new QHBoxLayout(viewerZ_Page);
        horizontalLayout_10->setSpacing(0);
        horizontalLayout_10->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_10->setObjectName(QString::fromUtf8("horizontalLayout_10"));
        frame_5 = new QFrame(viewerZ_Page);
        frame_5->setObjectName(QString::fromUtf8("frame_5"));
        frame_5->setFrameShape(QFrame::NoFrame);
        frame_5->setFrameShadow(QFrame::Raised);
        verticalLayout_12 = new QVBoxLayout(frame_5);
        verticalLayout_12->setSpacing(0);
        verticalLayout_12->setContentsMargins(0, 0, 0, 0);
        verticalLayout_12->setObjectName(QString::fromUtf8("verticalLayout_12"));
        naZStackWidget = new NaZStackWidget(frame_5);
        naZStackWidget->setObjectName(QString::fromUtf8("naZStackWidget"));
        naZStackWidget->setAutoFillBackground(true);

        verticalLayout_12->addWidget(naZStackWidget);

        ZSlice_horizontalScrollBar = new QScrollBar(frame_5);
        ZSlice_horizontalScrollBar->setObjectName(QString::fromUtf8("ZSlice_horizontalScrollBar"));
        ZSlice_horizontalScrollBar->setMinimum(0);
        ZSlice_horizontalScrollBar->setMaximum(0);
        ZSlice_horizontalScrollBar->setOrientation(Qt::Horizontal);

        verticalLayout_12->addWidget(ZSlice_horizontalScrollBar);


        horizontalLayout_10->addWidget(frame_5);

        viewerStackedWidget->addWidget(viewerZ_Page);
        viewer3D_Page = new QWidget();
        viewer3D_Page->setObjectName(QString::fromUtf8("viewer3D_Page"));
        horizontalLayout_3 = new QHBoxLayout(viewer3D_Page);
        horizontalLayout_3->setSpacing(0);
        horizontalLayout_3->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        v3dr_glwidget = new Na3DWidget(viewer3D_Page);
        v3dr_glwidget->setObjectName(QString::fromUtf8("v3dr_glwidget"));
        v3dr_glwidget->setMinimumSize(QSize(640, 480));

        horizontalLayout_3->addWidget(v3dr_glwidget);

        viewerStackedWidget->addWidget(viewer3D_Page);

        horizontalLayout_2->addWidget(viewerStackedWidget);

        viewerSelectorAndControlFrame = new QFrame(viewerAndControlsFrame);
        viewerSelectorAndControlFrame->setObjectName(QString::fromUtf8("viewerSelectorAndControlFrame"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(viewerSelectorAndControlFrame->sizePolicy().hasHeightForWidth());
        viewerSelectorAndControlFrame->setSizePolicy(sizePolicy);
        viewerSelectorAndControlFrame->setMinimumSize(QSize(200, 0));
        viewerSelectorAndControlFrame->setMaximumSize(QSize(200, 16777215));
        viewerSelectorAndControlFrame->setFrameShape(QFrame::StyledPanel);
        verticalLayout_7 = new QVBoxLayout(viewerSelectorAndControlFrame);
        verticalLayout_7->setSpacing(0);
        verticalLayout_7->setContentsMargins(0, 0, 0, 0);
        verticalLayout_7->setObjectName(QString::fromUtf8("verticalLayout_7"));
        viewerControlTabWidget = new QTabWidget(viewerSelectorAndControlFrame);
        viewerControlTabWidget->setObjectName(QString::fromUtf8("viewerControlTabWidget"));
        largeMipViewerControlPage = new QWidget();
        largeMipViewerControlPage->setObjectName(QString::fromUtf8("largeMipViewerControlPage"));
        verticalLayout_10 = new QVBoxLayout(largeMipViewerControlPage);
        verticalLayout_10->setContentsMargins(0, 0, 0, 0);
        verticalLayout_10->setObjectName(QString::fromUtf8("verticalLayout_10"));
        gammaWidget_MIP = new GammaWidget(largeMipViewerControlPage);
        gammaWidget_MIP->setObjectName(QString::fromUtf8("gammaWidget_MIP"));
        gammaWidget_MIP->setMinimumSize(QSize(0, 30));

        verticalLayout_10->addWidget(gammaWidget_MIP);

        verticalSpacer_4 = new QSpacerItem(20, 500, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_10->addItem(verticalSpacer_4);

        viewerControlTabWidget->addTab(largeMipViewerControlPage, QString());
        zSliceViewerControlPage = new QWidget();
        zSliceViewerControlPage->setObjectName(QString::fromUtf8("zSliceViewerControlPage"));
        horizontalLayout_12 = new QHBoxLayout(zSliceViewerControlPage);
        horizontalLayout_12->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_12->setObjectName(QString::fromUtf8("horizontalLayout_12"));
        frame = new QFrame(zSliceViewerControlPage);
        frame->setObjectName(QString::fromUtf8("frame"));
        frame->setFrameShape(QFrame::NoFrame);
        frame->setFrameShadow(QFrame::Raised);
        verticalLayout_9 = new QVBoxLayout(frame);
        verticalLayout_9->setContentsMargins(0, 0, 0, 0);
        verticalLayout_9->setObjectName(QString::fromUtf8("verticalLayout_9"));
        verticalSpacer_3 = new QSpacerItem(20, 190, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_9->addItem(verticalSpacer_3);

        ZSlice_groupBox = new QGroupBox(frame);
        ZSlice_groupBox->setObjectName(QString::fromUtf8("ZSlice_groupBox"));
        verticalLayout_11 = new QVBoxLayout(ZSlice_groupBox);
        verticalLayout_11->setContentsMargins(0, 0, 0, 0);
        verticalLayout_11->setObjectName(QString::fromUtf8("verticalLayout_11"));
        frame_3 = new QFrame(ZSlice_groupBox);
        frame_3->setObjectName(QString::fromUtf8("frame_3"));
        frame_3->setFrameShape(QFrame::NoFrame);
        frame_3->setFrameShadow(QFrame::Raised);
        horizontalLayout_13 = new QHBoxLayout(frame_3);
        horizontalLayout_13->setSpacing(-1);
        horizontalLayout_13->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_13->setObjectName(QString::fromUtf8("horizontalLayout_13"));
        HDRRed_pushButton = new QPushButton(frame_3);
        HDRRed_pushButton->setObjectName(QString::fromUtf8("HDRRed_pushButton"));
        HDRRed_pushButton->setEnabled(false);
        HDRRed_pushButton->setStyleSheet(QString::fromUtf8("color: rgb(255, 0, 0);"));
        HDRRed_pushButton->setCheckable(true);
        HDRRed_pushButton->setChecked(true);
        HDRRed_pushButton->setAutoExclusive(true);
        HDRRed_pushButton->setAutoDefault(false);
        HDRRed_pushButton->setDefault(false);

        horizontalLayout_13->addWidget(HDRRed_pushButton);

        HDRGreen_pushButton = new QPushButton(frame_3);
        HDRGreen_pushButton->setObjectName(QString::fromUtf8("HDRGreen_pushButton"));
        HDRGreen_pushButton->setEnabled(false);
        HDRGreen_pushButton->setStyleSheet(QString::fromUtf8("color: rgb(0, 128, 0);"));
        HDRGreen_pushButton->setCheckable(true);
        HDRGreen_pushButton->setAutoExclusive(true);

        horizontalLayout_13->addWidget(HDRGreen_pushButton);

        HDRBlue_pushButton = new QPushButton(frame_3);
        HDRBlue_pushButton->setObjectName(QString::fromUtf8("HDRBlue_pushButton"));
        HDRBlue_pushButton->setEnabled(false);
        HDRBlue_pushButton->setStyleSheet(QString::fromUtf8("color: rgb(0, 0, 255);"));
        HDRBlue_pushButton->setCheckable(true);
        HDRBlue_pushButton->setChecked(false);
        HDRBlue_pushButton->setAutoExclusive(true);

        horizontalLayout_13->addWidget(HDRBlue_pushButton);


        verticalLayout_11->addWidget(frame_3);

        frame_4 = new QFrame(ZSlice_groupBox);
        frame_4->setObjectName(QString::fromUtf8("frame_4"));
        frame_4->setFrameShape(QFrame::NoFrame);
        frame_4->setFrameShadow(QFrame::Raised);
        horizontalLayout_14 = new QHBoxLayout(frame_4);
        horizontalLayout_14->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_14->setObjectName(QString::fromUtf8("horizontalLayout_14"));
        BoxSize_label = new QLabel(frame_4);
        BoxSize_label->setObjectName(QString::fromUtf8("BoxSize_label"));

        horizontalLayout_14->addWidget(BoxSize_label);

        BoxSize_spinBox = new QSpinBox(frame_4);
        BoxSize_spinBox->setObjectName(QString::fromUtf8("BoxSize_spinBox"));
        BoxSize_spinBox->setMaximum(1000);
        BoxSize_spinBox->setValue(25);

        horizontalLayout_14->addWidget(BoxSize_spinBox);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_14->addItem(horizontalSpacer_2);


        verticalLayout_11->addWidget(frame_4);


        verticalLayout_9->addWidget(ZSlice_groupBox);

        verticalSpacer_2 = new QSpacerItem(20, 189, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_9->addItem(verticalSpacer_2);

        HDR_groupBox = new QGroupBox(frame);
        HDR_groupBox->setObjectName(QString::fromUtf8("HDR_groupBox"));
        horizontalLayout_15 = new QHBoxLayout(HDR_groupBox);
        horizontalLayout_15->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_15->setObjectName(QString::fromUtf8("horizontalLayout_15"));
        ZSlice_spinBox = new QSpinBox(HDR_groupBox);
        ZSlice_spinBox->setObjectName(QString::fromUtf8("ZSlice_spinBox"));
        ZSlice_spinBox->setMinimumSize(QSize(0, 0));
        ZSlice_spinBox->setMinimum(0);
        ZSlice_spinBox->setMaximum(0);

        horizontalLayout_15->addWidget(ZSlice_spinBox);

        ZSliceTotal_label = new QLabel(HDR_groupBox);
        ZSliceTotal_label->setObjectName(QString::fromUtf8("ZSliceTotal_label"));
        ZSliceTotal_label->setMinimumSize(QSize(60, 0));
        ZSliceTotal_label->setText(QString::fromUtf8("of 0"));
        ZSliceTotal_label->setTextFormat(Qt::PlainText);
        ZSliceTotal_label->setTextInteractionFlags(Qt::TextSelectableByMouse);

        horizontalLayout_15->addWidget(ZSliceTotal_label);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_15->addItem(horizontalSpacer);


        verticalLayout_9->addWidget(HDR_groupBox);


        horizontalLayout_12->addWidget(frame);

        viewerControlTabWidget->addTab(zSliceViewerControlPage, QString());
        viewer3DControlPage = new QWidget();
        viewer3DControlPage->setObjectName(QString::fromUtf8("viewer3DControlPage"));
        verticalLayout_3 = new QVBoxLayout(viewer3DControlPage);
        verticalLayout_3->setContentsMargins(0, 0, 0, 0);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        viewerControl3DFrame = new QFrame(viewer3DControlPage);
        viewerControl3DFrame->setObjectName(QString::fromUtf8("viewerControl3DFrame"));
        viewerControl3DFrame->setFrameShape(QFrame::NoFrame);
        viewerControl3DFrame->setFrameShadow(QFrame::Plain);
        viewerControl3DFrame->setLineWidth(0);
        verticalLayout_8 = new QVBoxLayout(viewerControl3DFrame);
        verticalLayout_8->setContentsMargins(0, 0, 0, 0);
        verticalLayout_8->setObjectName(QString::fromUtf8("verticalLayout_8"));
        color3DControlGroupBox = new QGroupBox(viewerControl3DFrame);
        color3DControlGroupBox->setObjectName(QString::fromUtf8("color3DControlGroupBox"));
        color3DControlGroupBox->setMinimumSize(QSize(0, 0));
        verticalLayout_4 = new QVBoxLayout(color3DControlGroupBox);
        verticalLayout_4->setSpacing(0);
        verticalLayout_4->setContentsMargins(0, 0, 0, 0);
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        frame_13 = new QFrame(color3DControlGroupBox);
        frame_13->setObjectName(QString::fromUtf8("frame_13"));
        frame_13->setFrameShape(QFrame::NoFrame);
        frame_13->setFrameShadow(QFrame::Raised);
        horizontalLayout_6 = new QHBoxLayout(frame_13);
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        horizontalLayout_6->setContentsMargins(0, 0, 0, 12);
        pushButton_3 = new QPushButton(frame_13);
        pushButton_3->setObjectName(QString::fromUtf8("pushButton_3"));
        pushButton_3->setCheckable(true);
        pushButton_3->setChecked(true);

        horizontalLayout_6->addWidget(pushButton_3);

        pushButton_2 = new QPushButton(frame_13);
        pushButton_2->setObjectName(QString::fromUtf8("pushButton_2"));
        pushButton_2->setCheckable(true);
        pushButton_2->setChecked(true);

        horizontalLayout_6->addWidget(pushButton_2);

        pushButton_4 = new QPushButton(frame_13);
        pushButton_4->setObjectName(QString::fromUtf8("pushButton_4"));
        pushButton_4->setCheckable(true);
        pushButton_4->setChecked(true);

        horizontalLayout_6->addWidget(pushButton_4);

        pushButton_5 = new QPushButton(frame_13);
        pushButton_5->setObjectName(QString::fromUtf8("pushButton_5"));
        pushButton_5->setCheckable(true);
        pushButton_5->setChecked(true);

        horizontalLayout_6->addWidget(pushButton_5);


        verticalLayout_4->addWidget(frame_13);

        gammaWidget_3D = new GammaWidget(color3DControlGroupBox);
        gammaWidget_3D->setObjectName(QString::fromUtf8("gammaWidget_3D"));
        gammaWidget_3D->setMinimumSize(QSize(0, 25));

        verticalLayout_4->addWidget(gammaWidget_3D);

        frame_12 = new QFrame(color3DControlGroupBox);
        frame_12->setObjectName(QString::fromUtf8("frame_12"));
        frame_12->setFrameShape(QFrame::NoFrame);
        frame_12->setFrameShadow(QFrame::Raised);
        horizontalLayout_8 = new QHBoxLayout(frame_12);
#ifndef Q_OS_MAC
        horizontalLayout_8->setSpacing(-1);
#endif
        horizontalLayout_8->setObjectName(QString::fromUtf8("horizontalLayout_8"));
        comboBox = new QComboBox(frame_12);
        comboBox->setObjectName(QString::fromUtf8("comboBox"));

        horizontalLayout_8->addWidget(comboBox);

        colorResetButton = new QPushButton(frame_12);
        colorResetButton->setObjectName(QString::fromUtf8("colorResetButton"));

        horizontalLayout_8->addWidget(colorResetButton);


        verticalLayout_4->addWidget(frame_12);


        verticalLayout_8->addWidget(color3DControlGroupBox);

        rotation3DControlGroupBox = new QGroupBox(viewerControl3DFrame);
        rotation3DControlGroupBox->setObjectName(QString::fromUtf8("rotation3DControlGroupBox"));
        rotation3DControlGroupBox->setMinimumSize(QSize(0, 0));
        rotation3DControlGroupBox->setMaximumSize(QSize(16777215, 300));
        verticalLayout_5 = new QVBoxLayout(rotation3DControlGroupBox);
        verticalLayout_5->setSpacing(0);
        verticalLayout_5->setContentsMargins(0, 0, 0, 0);
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        frame_16 = new QFrame(rotation3DControlGroupBox);
        frame_16->setObjectName(QString::fromUtf8("frame_16"));
        frame_16->setFrameShape(QFrame::NoFrame);
        frame_16->setFrameShadow(QFrame::Raised);
        horizontalLayout_9 = new QHBoxLayout(frame_16);
        horizontalLayout_9->setSpacing(0);
        horizontalLayout_9->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_9->setObjectName(QString::fromUtf8("horizontalLayout_9"));
        frame_18 = new QFrame(frame_16);
        frame_18->setObjectName(QString::fromUtf8("frame_18"));
        frame_18->setMinimumSize(QSize(0, 0));
        frame_18->setFrameShape(QFrame::NoFrame);
        frame_18->setFrameShadow(QFrame::Raised);
        gridLayout_2 = new QGridLayout(frame_18);
        gridLayout_2->setSpacing(0);
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        rotXDial = new QDial(frame_18);
        rotXDial->setObjectName(QString::fromUtf8("rotXDial"));
        rotXDial->setMaximum(360);
        rotXDial->setSingleStep(15);
        rotXDial->setPageStep(45);
        rotXDial->setOrientation(Qt::Vertical);
        rotXDial->setInvertedAppearance(false);
        rotXDial->setInvertedControls(false);
        rotXDial->setWrapping(true);
        rotXDial->setNotchTarget(10);
        rotXDial->setNotchesVisible(true);

        gridLayout_2->addWidget(rotXDial, 0, 0, 1, 1);

        lineEdit_4 = new QLineEdit(frame_18);
        lineEdit_4->setObjectName(QString::fromUtf8("lineEdit_4"));
        lineEdit_4->setMinimumSize(QSize(0, 0));
        lineEdit_4->setMaximumSize(QSize(50, 16777215));

        gridLayout_2->addWidget(lineEdit_4, 0, 1, 1, 1);

        rotYDial = new QDial(frame_18);
        rotYDial->setObjectName(QString::fromUtf8("rotYDial"));
        rotYDial->setMaximum(360);
        rotYDial->setSingleStep(15);
        rotYDial->setPageStep(45);
        rotYDial->setOrientation(Qt::Vertical);
        rotYDial->setWrapping(true);
        rotYDial->setNotchTarget(10);
        rotYDial->setNotchesVisible(true);

        gridLayout_2->addWidget(rotYDial, 1, 0, 1, 1);

        lineEdit_5 = new QLineEdit(frame_18);
        lineEdit_5->setObjectName(QString::fromUtf8("lineEdit_5"));
        lineEdit_5->setMaximumSize(QSize(50, 16777215));

        gridLayout_2->addWidget(lineEdit_5, 1, 1, 1, 1);

        rotZDial = new QDial(frame_18);
        rotZDial->setObjectName(QString::fromUtf8("rotZDial"));
        rotZDial->setMaximum(360);
        rotZDial->setSingleStep(15);
        rotZDial->setPageStep(45);
        rotZDial->setWrapping(true);
        rotZDial->setNotchTarget(10);
        rotZDial->setNotchesVisible(true);

        gridLayout_2->addWidget(rotZDial, 2, 0, 1, 1);

        lineEdit_6 = new QLineEdit(frame_18);
        lineEdit_6->setObjectName(QString::fromUtf8("lineEdit_6"));
        lineEdit_6->setMaximumSize(QSize(50, 16777215));

        gridLayout_2->addWidget(lineEdit_6, 2, 1, 1, 1);


        horizontalLayout_9->addWidget(frame_18);

        frame_17 = new QFrame(frame_16);
        frame_17->setObjectName(QString::fromUtf8("frame_17"));
        frame_17->setFrameShape(QFrame::NoFrame);
        frame_17->setFrameShadow(QFrame::Raised);
        verticalLayout_6 = new QVBoxLayout(frame_17);
        verticalLayout_6->setContentsMargins(0, 0, 0, 0);
        verticalLayout_6->setObjectName(QString::fromUtf8("verticalLayout_6"));
        rotationResetButton = new QPushButton(frame_17);
        rotationResetButton->setObjectName(QString::fromUtf8("rotationResetButton"));

        verticalLayout_6->addWidget(rotationResetButton);

        pushButton_10 = new QPushButton(frame_17);
        pushButton_10->setObjectName(QString::fromUtf8("pushButton_10"));

        verticalLayout_6->addWidget(pushButton_10);


        horizontalLayout_9->addWidget(frame_17);


        verticalLayout_5->addWidget(frame_16);

        frame_15 = new QFrame(rotation3DControlGroupBox);
        frame_15->setObjectName(QString::fromUtf8("frame_15"));
        frame_15->setFrameShape(QFrame::NoFrame);
        frame_15->setFrameShadow(QFrame::Raised);
        gridLayout_3 = new QGridLayout(frame_15);
        gridLayout_3->setContentsMargins(0, 0, 0, 0);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        custom3DWidget = new QWidget(frame_15);
        custom3DWidget->setObjectName(QString::fromUtf8("custom3DWidget"));
        custom3DWidget->setMinimumSize(QSize(100, 100));

        gridLayout_3->addWidget(custom3DWidget, 0, 0, 1, 1);


        verticalLayout_5->addWidget(frame_15);


        verticalLayout_8->addWidget(rotation3DControlGroupBox);

        nutateButton = new QCheckBox(viewerControl3DFrame);
        nutateButton->setObjectName(QString::fromUtf8("nutateButton"));
        nutateButton->setCheckable(true);

        verticalLayout_8->addWidget(nutateButton);

        verticalSpacer = new QSpacerItem(158, 83, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_8->addItem(verticalSpacer);


        verticalLayout_3->addWidget(viewerControl3DFrame);

        viewerControlTabWidget->addTab(viewer3DControlPage, QString());

        verticalLayout_7->addWidget(viewerControlTabWidget);


        horizontalLayout_2->addWidget(viewerSelectorAndControlFrame);


        verticalLayout->addWidget(viewerAndControlsFrame);

        mipsFrame = new QFrame(viewerAndMIPsFrame);
        mipsFrame->setObjectName(QString::fromUtf8("mipsFrame"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(mipsFrame->sizePolicy().hasHeightForWidth());
        mipsFrame->setSizePolicy(sizePolicy1);
        mipsFrame->setMinimumSize(QSize(0, 200));
        mipsFrame->setFrameShape(QFrame::StyledPanel);
        mipsFrame->setFrameShadow(QFrame::Raised);
        mipsFrame->setLineWidth(1);
        horizontalLayout_4 = new QHBoxLayout(mipsFrame);
        horizontalLayout_4->setSpacing(0);
        horizontalLayout_4->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        maskFrame = new QFrame(mipsFrame);
        maskFrame->setObjectName(QString::fromUtf8("maskFrame"));
        sizePolicy.setHeightForWidth(maskFrame->sizePolicy().hasHeightForWidth());
        maskFrame->setSizePolicy(sizePolicy);
        maskFrame->setMinimumSize(QSize(300, 0));
        maskFrame->setFrameShape(QFrame::StyledPanel);
        maskFrame->setFrameShadow(QFrame::Raised);
        maskFrame->setLineWidth(1);

        horizontalLayout_4->addWidget(maskFrame);

        galleryFrame = new QFrame(mipsFrame);
        galleryFrame->setObjectName(QString::fromUtf8("galleryFrame"));
        galleryFrame->setFrameShape(QFrame::NoFrame);
        galleryFrame->setFrameShadow(QFrame::Plain);
        galleryFrame->setLineWidth(0);
        verticalLayout_2 = new QVBoxLayout(galleryFrame);
        verticalLayout_2->setSpacing(0);
        verticalLayout_2->setContentsMargins(0, 0, 0, 0);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        scrollArea = new QScrollArea(galleryFrame);
        scrollArea->setObjectName(QString::fromUtf8("scrollArea"));
        scrollArea->setFrameShape(QFrame::NoFrame);
        scrollArea->setFrameShadow(QFrame::Plain);
        scrollArea->setLineWidth(0);
        scrollArea->setWidgetResizable(true);
        scrollAreaWidgetContents = new QWidget();
        scrollAreaWidgetContents->setObjectName(QString::fromUtf8("scrollAreaWidgetContents"));
        scrollAreaWidgetContents->setGeometry(QRect(0, 0, 540, 198));
        horizontalLayout_5 = new QHBoxLayout(scrollAreaWidgetContents);
        horizontalLayout_5->setSpacing(0);
        horizontalLayout_5->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        maskGallery = new QFrame(scrollAreaWidgetContents);
        maskGallery->setObjectName(QString::fromUtf8("maskGallery"));
        maskGallery->setFrameShape(QFrame::StyledPanel);
        maskGallery->setFrameShadow(QFrame::Raised);
        maskGallery->setLineWidth(1);

        horizontalLayout_5->addWidget(maskGallery);

        scrollArea->setWidget(scrollAreaWidgetContents);

        verticalLayout_2->addWidget(scrollArea);


        horizontalLayout_4->addWidget(galleryFrame);


        verticalLayout->addWidget(mipsFrame);


        horizontalLayout->addWidget(viewerAndMIPsFrame);

        annotationFrame = new QFrame(centralwidget);
        annotationFrame->setObjectName(QString::fromUtf8("annotationFrame"));
        sizePolicy.setHeightForWidth(annotationFrame->sizePolicy().hasHeightForWidth());
        annotationFrame->setSizePolicy(sizePolicy);
        annotationFrame->setMinimumSize(QSize(200, 0));
        annotationFrame->setFrameShape(QFrame::NoFrame);
        annotationFrame->setFrameShadow(QFrame::Raised);
        annotationFrame->setLineWidth(1);

        horizontalLayout->addWidget(annotationFrame);

        NaMainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(NaMainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 1042, 22));
        menuFile = new QMenu(menubar);
        menuFile->setObjectName(QString::fromUtf8("menuFile"));
        menuHelp = new QMenu(menubar);
        menuHelp->setObjectName(QString::fromUtf8("menuHelp"));
        menuEdit = new QMenu(menubar);
        menuEdit->setObjectName(QString::fromUtf8("menuEdit"));
        menuView = new QMenu(menubar);
        menuView->setObjectName(QString::fromUtf8("menuView"));
        menuMode = new QMenu(menuView);
        menuMode->setObjectName(QString::fromUtf8("menuMode"));
        NaMainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(NaMainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        NaMainWindow->setStatusBar(statusbar);

        menubar->addAction(menuFile->menuAction());
        menubar->addAction(menuEdit->menuAction());
        menubar->addAction(menuView->menuAction());
        menubar->addAction(menuHelp->menuAction());
        menuFile->addAction(actionOpen);
        menuFile->addSeparator();
        menuFile->addAction(actionLoad_Tiff);
        menuFile->addAction(actionCell_Counter_3D_2ch_lsm);
        menuFile->addSeparator();
        menuFile->addAction(actionQuit);
        menuHelp->addAction(actionAbout_NeuronAnnotator);
        menuEdit->addAction(actionPreferences);
        menuView->addAction(actionShow_Crosshair);
        menuView->addAction(actionLink_viewers);
        menuView->addSeparator();
        menuView->addAction(menuMode->menuAction());
        menuMode->addAction(actionV3DDefault);
        menuMode->addAction(actionNeuronAnnotator);

        retranslateUi(NaMainWindow);
        QObject::connect(viewerControlTabWidget, SIGNAL(currentChanged(int)), viewerStackedWidget, SLOT(setCurrentIndex(int)));
        QObject::connect(ZSlice_horizontalScrollBar, SIGNAL(valueChanged(int)), ZSlice_spinBox, SLOT(setValue(int)));
        QObject::connect(ZSlice_spinBox, SIGNAL(valueChanged(int)), ZSlice_horizontalScrollBar, SLOT(setValue(int)));

        viewerStackedWidget->setCurrentIndex(2);
        viewerControlTabWidget->setCurrentIndex(2);


        QMetaObject::connectSlotsByName(NaMainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *NaMainWindow)
    {
        NaMainWindow->setWindowTitle(QApplication::translate("NaMainWindow", "V3D NeuronAnnotator", 0, QApplication::UnicodeUTF8));
        actionOpen->setText(QApplication::translate("NaMainWindow", "Annotate MultiColor Stack...", 0, QApplication::UnicodeUTF8));
        actionLog_off->setText(QApplication::translate("NaMainWindow", "Log off", 0, QApplication::UnicodeUTF8));
        actionAbout_NeuronAnnotator->setText(QApplication::translate("NaMainWindow", "About NeuronAnnotator...", 0, QApplication::UnicodeUTF8));
        actionQuit->setText(QApplication::translate("NaMainWindow", "Quit", 0, QApplication::UnicodeUTF8));
        actionV3DDefault_2->setText(QApplication::translate("NaMainWindow", "V3D default", 0, QApplication::UnicodeUTF8));
        actionNeuronAnnotator_2->setText(QApplication::translate("NaMainWindow", "Neuron Annotator", 0, QApplication::UnicodeUTF8));
        actionLoad_Tiff->setText(QApplication::translate("NaMainWindow", "Open 3D Image/Stack...", 0, QApplication::UnicodeUTF8));
        actionLoad_2D_MIP_image->setText(QApplication::translate("NaMainWindow", "Load 2D MIP image...", 0, QApplication::UnicodeUTF8));
        actionCell_Counter_3D_2ch_lsm->setText(QApplication::translate("NaMainWindow", "Cell Counter 3D 2ch lsm...", 0, QApplication::UnicodeUTF8));
        actionPreferences->setText(QApplication::translate("NaMainWindow", "Preferences...", 0, QApplication::UnicodeUTF8));
        actionV3D_default->setText(QApplication::translate("NaMainWindow", "V3D default", 0, QApplication::UnicodeUTF8));
        actionNeuron_annotator->setText(QApplication::translate("NaMainWindow", "Neuron annotator", 0, QApplication::UnicodeUTF8));
        actionV3DDefault->setText(QApplication::translate("NaMainWindow", "V3D default", 0, QApplication::UnicodeUTF8));
        actionNeuronAnnotator->setText(QApplication::translate("NaMainWindow", "Neuron Annotator", 0, QApplication::UnicodeUTF8));
        actionLink_viewers->setText(QApplication::translate("NaMainWindow", "Link viewers", 0, QApplication::UnicodeUTF8));
        actionShow_Crosshair->setText(QApplication::translate("NaMainWindow", "Show Crosshair", 0, QApplication::UnicodeUTF8));
        viewerControlTabWidget->setTabText(viewerControlTabWidget->indexOf(largeMipViewerControlPage), QApplication::translate("NaMainWindow", "MIP", 0, QApplication::UnicodeUTF8));
        viewerControlTabWidget->setTabToolTip(viewerControlTabWidget->indexOf(largeMipViewerControlPage), QApplication::translate("NaMainWindow", "View Maximum Intensity Projection", 0, QApplication::UnicodeUTF8));
        ZSlice_groupBox->setTitle(QApplication::translate("NaMainWindow", "HDR Tool", 0, QApplication::UnicodeUTF8));
        HDRRed_pushButton->setText(QApplication::translate("NaMainWindow", "R", 0, QApplication::UnicodeUTF8));
        HDRGreen_pushButton->setText(QApplication::translate("NaMainWindow", "G", 0, QApplication::UnicodeUTF8));
        HDRBlue_pushButton->setText(QApplication::translate("NaMainWindow", "B", 0, QApplication::UnicodeUTF8));
        BoxSize_label->setText(QApplication::translate("NaMainWindow", "Box Size", 0, QApplication::UnicodeUTF8));
        HDR_groupBox->setTitle(QApplication::translate("NaMainWindow", "Z Slice", 0, QApplication::UnicodeUTF8));
        viewerControlTabWidget->setTabText(viewerControlTabWidget->indexOf(zSliceViewerControlPage), QApplication::translate("NaMainWindow", "Z stack", 0, QApplication::UnicodeUTF8));
        viewerControlTabWidget->setTabToolTip(viewerControlTabWidget->indexOf(zSliceViewerControlPage), QApplication::translate("NaMainWindow", "View 3D Z-stack", 0, QApplication::UnicodeUTF8));
        color3DControlGroupBox->setTitle(QApplication::translate("NaMainWindow", "Colors", 0, QApplication::UnicodeUTF8));
        pushButton_3->setText(QApplication::translate("NaMainWindow", "r", 0, QApplication::UnicodeUTF8));
        pushButton_2->setText(QApplication::translate("NaMainWindow", "g", 0, QApplication::UnicodeUTF8));
        pushButton_4->setText(QApplication::translate("NaMainWindow", "b", 0, QApplication::UnicodeUTF8));
        pushButton_5->setText(QApplication::translate("NaMainWindow", "R", 0, QApplication::UnicodeUTF8));
        comboBox->clear();
        comboBox->insertItems(0, QStringList()
         << QApplication::translate("NaMainWindow", "Filters", 0, QApplication::UnicodeUTF8)
        );
#ifndef QT_NO_TOOLTIP
        colorResetButton->setToolTip(QApplication::translate("NaMainWindow", "Restore default color intensities.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        colorResetButton->setText(QApplication::translate("NaMainWindow", "Reset", 0, QApplication::UnicodeUTF8));
        rotation3DControlGroupBox->setTitle(QApplication::translate("NaMainWindow", "Rotation", 0, QApplication::UnicodeUTF8));
        rotationResetButton->setText(QApplication::translate("NaMainWindow", "Reset", 0, QApplication::UnicodeUTF8));
        pushButton_10->setText(QApplication::translate("NaMainWindow", "Lock", 0, QApplication::UnicodeUTF8));
        nutateButton->setText(QApplication::translate("NaMainWindow", "Nutate", 0, QApplication::UnicodeUTF8));
        viewerControlTabWidget->setTabText(viewerControlTabWidget->indexOf(viewer3DControlPage), QApplication::translate("NaMainWindow", "3D", 0, QApplication::UnicodeUTF8));
        viewerControlTabWidget->setTabToolTip(viewerControlTabWidget->indexOf(viewer3DControlPage), QApplication::translate("NaMainWindow", "View 3D volume", 0, QApplication::UnicodeUTF8));
        menuFile->setTitle(QApplication::translate("NaMainWindow", "File", 0, QApplication::UnicodeUTF8));
        menuHelp->setTitle(QApplication::translate("NaMainWindow", "Help", 0, QApplication::UnicodeUTF8));
        menuEdit->setTitle(QApplication::translate("NaMainWindow", "Edit", 0, QApplication::UnicodeUTF8));
        menuView->setTitle(QApplication::translate("NaMainWindow", "View", 0, QApplication::UnicodeUTF8));
        menuMode->setTitle(QApplication::translate("NaMainWindow", "Mode", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class NaMainWindow: public Ui_NaMainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAMAINWINDOW_H
