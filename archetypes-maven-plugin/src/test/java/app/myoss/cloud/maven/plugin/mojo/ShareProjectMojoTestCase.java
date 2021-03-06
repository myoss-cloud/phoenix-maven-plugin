/*
 * Copyright 2018-2018 https://github.com/myoss
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
 *
 */

package app.myoss.cloud.maven.plugin.mojo;

import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.maven.plugin.testing.AbstractMojoTestCase;

import junit.framework.TestCase;

/**
 * {@link ShareProjectMojo} 测试类，第一次运行，需要先执行 <code>mvn clean package</code>
 *
 * @author Jerry.Chen
 * @since 2018年7月9日 下午18:59:07
 */
public class ShareProjectMojoTestCase extends AbstractMojoTestCase {
    public void testGenerate() throws Exception {
        Path pluginPom = Paths.get(getBasedir(), "/src/test/resources/share-project-test/plugin-pom.xml");
        ShareProjectMojo mojo = (ShareProjectMojo) lookupMojo("shareProject", pluginPom.toString());
        TestCase.assertNotNull(mojo);
        mojo.execute();
    }
}
