#include "opencv2/opencv.hpp"
#include <gtest/gtest.h>

TEST(VersionTest, BasicAssertions) {
  EXPECT_STREQ("4.8.1", CV_VERSION);
}

TEST(JpegTest, BasicAssertions) {
  cv::Mat image = cv::imread("test/data/sample_640×426.jpeg");
  EXPECT_EQ(640, image.cols);
  EXPECT_EQ(426, image.rows);
  EXPECT_EQ(CV_8U, image.depth());
  EXPECT_EQ(CV_8UC3, image.type());
}

TEST(PngTest, BasicAssertions) {
  cv::Mat image = cv::imread("test/data/sample_640×426.png");
  EXPECT_EQ(640, image.cols);
  EXPECT_EQ(426, image.rows);
  EXPECT_EQ(CV_8U, image.depth());
  EXPECT_EQ(CV_8UC3, image.type());
}
