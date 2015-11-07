package com.stuman.dao;

import java.util.Properties;
import java.io.*;

public class DAOConfig {

    private static Properties props = null;

    private synchronized static void loadProperties() {
        props = new Properties();
        try {
            InputStream input = DAOConfig.class
                    .getResourceAsStream("/daoconfig.properties");
            props.load(input);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getProperty(String propName) {
        loadProperties();
        return props.getProperty(propName);
    }
}