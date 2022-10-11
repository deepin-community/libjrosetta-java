package com.artenum.rosetta.util;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class ConfigurationBuilderTest {

    @Test
    public void testGetVersion() {
        final String version = ConfigurationBuilder.getVersion();
        System.out.println(version);
        assertNotNull(version);
    }
}
