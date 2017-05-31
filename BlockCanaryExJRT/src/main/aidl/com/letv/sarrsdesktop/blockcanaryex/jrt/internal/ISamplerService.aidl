/*
 * Copyright (C) 2017 lqcandqq13 (https://github.com/lqcandqq13).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.letv.sarrsdesktop.blockcanaryex.jrt.internal;
import com.letv.sarrsdesktop.blockcanaryex.jrt.internal.CpuInfo;
import com.letv.sarrsdesktop.blockcanaryex.jrt.internal.GcInfo;
import com.letv.sarrsdesktop.blockcanaryex.jrt.internal.INewLogListener;

interface ISamplerService {
    void resetSampler(int pid, long startTimeMs);
    CpuInfo getCurrentCpuInfo(long startTimeMs, long endTimeMs);
    List<GcInfo> popGcInfoBetween(long startTimeMs, long endTimeMs);
    void notifyNewLog(String logRootDir, String newLogPath);
    void registerNewLogListener(INewLogListener newLogListener);
    void unregisterNewLogListener(INewLogListener newLogListener);
}
