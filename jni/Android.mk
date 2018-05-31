#
# Copyright (C) 2018 Leo Francisco Simpao
# $Id: Android.mk, v 1.0 2018/05/31 23:00:00 lfasmpao
#
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with This program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#

LOCAL_PATH := $(call my-dir)
ROOT_PATH := $(LOCAL_PATH)

########################################################
## dns2tcp
########################################################

include $(CLEAR_VARS)

LOCAL_CFLAGS := -fPIE -pie -g -O2 -Wall -Wunused
DNS2TCP_SOURCES  := \
        $(wildcard $(LOCAL_PATH)/dns2tcp/*.c) \
        $(wildcard $(LOCAL_PATH)/dns2tcp/common/*.c)
LOCAL_MODULE    := dns2tcp

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/dns2tcp/common/includes \
        $(LOCAL_PATH)/dns2tcp/includes
LOCAL_SRC_FILES := $(DNS2TCP_SOURCES:$(LOCAL_PATH)/%=%)

include $(BUILD_EXECUTABLE)
