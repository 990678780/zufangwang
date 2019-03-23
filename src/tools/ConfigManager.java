package tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;


/**
 * 读取配置文件的工具类——单例"饿汉"模式+静态内部类
 */
public class ConfigManager {
	// 类加载时，不自行进行初始化操作，只声明静态对象
	private static ConfigManager configManager;
	private static Properties properties;

	// 创建静态内部类,负责给ConfigManager赋值一次
	public static class ConfigManagerBuilder {
		private static final ConfigManager CONFIG_MANAGER = new ConfigManager();
	}

	// 1.私有构造器，读取数据库配置文件
	public ConfigManager() {
		String configFile = "database.properties";
		properties = new Properties();
		InputStream is = ConfigManager.class.getClassLoader()
				.getResourceAsStream(configFile);
		try {
			properties.load(is);
			is.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 2.创建全局访问点,“单例”核心
	public static ConfigManager getInstance() {
		configManager = ConfigManagerBuilder.CONFIG_MANAGER;
		return configManager;
	}

	public String getValue(String key) {
		return properties.getProperty(key);
	}
}