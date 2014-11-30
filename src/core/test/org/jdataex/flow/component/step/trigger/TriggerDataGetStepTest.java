package org.jdataex.flow.component.step.trigger;

import static org.junit.Assert.fail;

import java.io.File;

import org.jdataex.BaseJDataExTest;
import org.jdataex.core.InitializationException;
import org.jdataex.util.FileUtil;
import org.junit.Test;

public class TriggerDataGetStepTest extends BaseJDataExTest {
    private static File basedir = FileUtil
            .findAbsoluteFile(TriggerDataGetStepTest.class);

    @Test
    public void test() throws InitializationException {
        File file = new File(basedir, "TriggerDataGet-config.xml");
        
        fail("测试用例未实现，主要是功能代码没实现。");
    }


}