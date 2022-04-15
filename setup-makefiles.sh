#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2022 The OctaviOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=x2
export DEVICE_COMMON=msm8996-common
export VENDOR=leeco

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
